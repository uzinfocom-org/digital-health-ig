#!/usr/bin/env node
/*
 * Draft linter: flag non-canonical apostrophes and stray whitespace in Uzbek
 * CodeSystem values (concept displays/definitions and #uz designations).
 *
 * Uzbek Latin orthography uses two dedicated modifier letters:
 *   - o'/g'  -> U+02BB MODIFIER LETTER TURNED COMMA (in the o'/g' digraphs)
 *   - tutuq belgisi (glottal stop, e.g. ma'lumot) -> U+02BC MODIFIER LETTER APOSTROPHE
 *
 * The FSH sources mix these with ASCII apostrophe (U+0027), curly quotes
 * (U+2018/U+2019), grave/acute accents and prime. This linter reports the
 * non-canonical occurrences so they can be normalized.
 *
 * Scope (deliberately narrow to avoid false positives on English prose):
 *   - concept lines: `* #<code> "display" ["definition"]` -- language-neutral
 *     rules only (digraph / curly / grave / whitespace); the tutuq rule is NOT
 *     applied here because a display may legitimately be English.
 *   - designation values tagged `language = #uz` -- all rules, including tutuq.
 * Everything else (Title, Description, ^url/^property, invariants, #en/#ru
 * designations, example instances) is skipped.
 *
 * Usage:
 *   node scripts/lint-uzbek-orthography.js [--severity error|warning]
 *                                          [--report REPORT.md] [PATH ...]
 *
 * Exit code: 0 if clean or severity=warning; 1 if findings and severity=error.
 *
 * No third-party dependencies -- runs on the Node.js already required to build
 * the IG (SUSHI).
 */

"use strict";

const fs = require("fs");
const path = require("path");

// Codepoints -----------------------------------------------------------------
const ASCII_APOS = "'"; // U+0027
const CURLY = new Set(["‘", "’"]); // ' '
const GRAVE_LIKE = new Set(["`", "´", "′"]); // ` ´ ′
const APOS_LIKE = new Set([ASCII_APOS, "‘", "’"]);
const DIGRAPH_PREV = new Set(["o", "O", "g", "G"]);

// Anchor default paths and reported paths to the repo root (scripts/..), so the
// linter works from any working directory and still emits repo-relative paths
// for GitHub annotations.
const REPO_ROOT = path.resolve(__dirname, "..");
const DEFAULT_PATHS = [
  path.join(REPO_ROOT, "input/fsh"),
  path.join(REPO_ROOT, "input/manual-fsh"),
];

// Repo-relative path for display; falls back to the original if outside the repo.
function rel(p) {
  const r = path.relative(REPO_ROOT, p);
  return r && !r.startsWith("..") ? r : p;
}

// FSH line patterns ----------------------------------------------------------
const STR = '"(?:[^"\\\\]|\\\\.)*"';
const CONCEPT_RE = new RegExp('^(\\s*\\*\\s+#(?:"(?:[^"\\\\]|\\\\.)*"|\\S+))(.*)$');
const LANG_RE = /\.language\s*=\s*#(\w+)/;
const VALUE_RE = new RegExp("(\\.value\\s*=\\s*)(" + STR + ")");

const RULE_MSG = {
  digraph: "o'/g' digraph must use U+02BB (write oʻ/gʻ)",
  curly: "curly quote is not canonical (use U+02BB/U+02BC or ASCII per context)",
  grave: "grave/acute/prime is not a valid apostrophe",
  whitespace: "double or leading/trailing whitespace in value",
  tutuq: "ASCII apostrophe in an Uzbek word should be U+02BC (tutuq belgisi)",
};
const RULE_ORDER = ["digraph", "tutuq", "curly", "grave", "whitespace"];

const LETTER_RE = /\p{L}/u;

function cp(ch) {
  return "U+" + ch.codePointAt(0).toString(16).toUpperCase().padStart(4, "0");
}

// Yield findings inside one string literal.
// `text` is the content between the surrounding quotes; `baseCol` is the
// 0-based offset of text[0] within the source line.
function scanString(text, baseCol, applyTutuq, push) {
  for (let i = 0; i < text.length; i++) {
    const ch = text[i];
    const prev = i > 0 ? text[i - 1] : "";
    const col = baseCol + i + 1; // 1-based column
    if (APOS_LIKE.has(ch) && DIGRAPH_PREV.has(prev)) {
      push(col, "digraph", ch);
    } else if (CURLY.has(ch)) {
      push(col, "curly", ch);
    } else if (GRAVE_LIKE.has(ch)) {
      push(col, "grave", ch);
    } else if (applyTutuq && ch === ASCII_APOS && LETTER_RE.test(prev) && !DIGRAPH_PREV.has(prev)) {
      push(col, "tutuq", ch);
    }
  }
  if (text.includes("  ") || (text.length && text !== text.trim())) {
    push(baseCol + 1, "whitespace", " ");
  }
}

// Yield [content, baseCol] for concept display/definition strings.
function conceptStrings(line, cb) {
  const m = CONCEPT_RE.exec(line);
  if (!m) return;
  const prefixLen = m[1].length;
  const rest = m[2];
  const re = new RegExp(STR, "g");
  let sm;
  while ((sm = re.exec(rest)) !== null) {
    const content = sm[0].slice(1, -1);
    const baseCol = prefixLen + sm.index + 1; // +1 past the opening quote
    cb(content, baseCol);
    if (sm.index === re.lastIndex) re.lastIndex++;
  }
}

function lintFile(filePath) {
  const findings = [];
  const lines = fs.readFileSync(filePath, "utf8").split("\n");
  let pendingLang = null;
  for (let idx = 0; idx < lines.length; idx++) {
    const line = lines[idx].replace(/\r$/, "");
    const lineno = idx + 1;

    const langM = LANG_RE.exec(line);
    if (langM) {
      pendingLang = langM[1];
      continue;
    }

    const valM = VALUE_RE.exec(line);
    if (valM) {
      if (pendingLang === "uz") {
        const content = valM[2].slice(1, -1);
        const baseCol = valM.index + valM[1].length + 1; // past opening quote
        scanString(content, baseCol, true, (col, rule, ch) =>
          findings.push({ file: filePath, line: lineno, col, rule, char: ch }));
      }
      pendingLang = null;
      continue;
    }

    conceptStrings(line, (content, baseCol) => {
      scanString(content, baseCol, false, (col, rule, ch) =>
        findings.push({ file: filePath, line: lineno, col, rule, char: ch }));
    });
  }
  return findings;
}

function collectFiles(paths) {
  const out = [];
  const walk = (p) => {
    const st = fs.statSync(p);
    if (st.isFile()) {
      if (p.endsWith(".fsh")) out.push(p);
    } else if (st.isDirectory()) {
      for (const name of fs.readdirSync(p).sort()) {
        walk(path.join(p, name));
      }
    }
  };
  for (const p of paths) {
    if (fs.existsSync(p)) walk(p);
  }
  return Array.from(new Set(out)).sort();
}

function writeReport(reportPath, findings, filesScanned) {
  const byRule = {};
  const byFileRule = {};
  for (const f of findings) {
    const fp = rel(f.file);
    byRule[f.rule] = (byRule[f.rule] || 0) + 1;
    (byFileRule[fp] = byFileRule[fp] || {})[f.rule] =
      ((byFileRule[fp] || {})[f.rule] || 0) + 1;
  }
  const total = (c, r) => (c && c[r]) || 0;

  const out = [];
  out.push("# Uzbek orthography inventory\n");
  out.push(
    "Generated by `scripts/lint-uzbek-orthography.js`. Detection only -- " +
      "no source files were modified.\n");
  out.push(`- Files scanned: ${filesScanned}`);
  out.push(`- Files with findings: ${Object.keys(byFileRule).length}`);
  out.push(`- Total findings: ${findings.length}\n`);

  out.push("## By rule\n");
  out.push("| Rule | Count | Meaning |");
  out.push("| --- | ---: | --- |");
  for (const rule of RULE_ORDER) {
    out.push(`| \`${rule}\` | ${byRule[rule] || 0} | ${RULE_MSG[rule]} |`);
  }
  out.push("");

  out.push("## By file\n");
  out.push("| File | digraph | tutuq | curly | grave | whitespace |");
  out.push("| --- | ---: | ---: | ---: | ---: | ---: |");
  const files = Object.keys(byFileRule).sort((a, b) => {
    const sum = (o) => Object.values(o).reduce((x, y) => x + y, 0);
    return sum(byFileRule[b]) - sum(byFileRule[a]);
  });
  for (const fp of files) {
    const c = byFileRule[fp];
    out.push(
      `| \`${fp}\` | ${total(c, "digraph")} | ${total(c, "tutuq")} | ` +
        `${total(c, "curly")} | ${total(c, "grave")} | ${total(c, "whitespace")} |`);
  }
  out.push("");

  fs.writeFileSync(reportPath, out.join("\n"));
}

function main(argv) {
  const paths = [];
  let severity = "error";
  let report = null;
  for (let i = 0; i < argv.length; i++) {
    const a = argv[i];
    if (a === "--severity") {
      severity = argv[++i];
      if (severity !== "error" && severity !== "warning") {
        console.error(`invalid --severity: ${severity}`);
        return 2;
      }
    } else if (a === "--report") {
      report = argv[++i];
    } else if (a.startsWith("--")) {
      console.error(`unknown option: ${a}`);
      return 2;
    } else {
      paths.push(a);
    }
  }

  const files = collectFiles(paths.length ? paths : DEFAULT_PATHS);
  const findings = [];
  for (const f of files) findings.push(...lintFile(f));

  for (const fnd of findings) {
    const msg = `${RULE_MSG[fnd.rule]} (${cp(fnd.char)})`;
    console.log(`::${severity} file=${rel(fnd.file)},line=${fnd.line},col=${fnd.col}::${msg}`);
  }

  const byRule = {};
  for (const f of findings) byRule[f.rule] = (byRule[f.rule] || 0) + 1;
  const filesWith = new Set(findings.map((f) => f.file)).size;
  const summary = RULE_ORDER.map((r) => `${r}=${byRule[r] || 0}`).join(", ");
  console.error(
    `lint-uzbek-orthography: ${findings.length} findings in ${filesWith} of ` +
      `${files.length} files (${summary})`);

  if (report) {
    writeReport(report, findings, files.length);
    console.error(`report written to ${report}`);
  }

  return findings.length && severity === "error" ? 1 : 0;
}

process.exit(main(process.argv.slice(2)));
