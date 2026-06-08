#!/usr/bin/env bash
#
# Fast narrative rebuild for a multilingual (i18n) FHIR IG.
#
# Re-renders ONLY the markdown narrative via Jekyll, skipping the ~20-min Java
# publisher. Covers input/pagecontent/*.md: both the standalone guidance pages
# (how-to-read, must-support, general-guidance, workflows ...) AND the
# StructureDefinition -intro/-notes fragments (they are markdownified by Jekyll
# at build time, so edits to them show up too).
#
# Renders all three languages (en/ru/uz): English base plus the translated
# pages from input/translations/<lang>/pagecontent overlaid on top.
#
# It does NOT regenerate structure tables, validation, terminology, examples
# listings or any artifact - those need the full ./_genonce.sh build.
#
# Prereq: a full build must have run at least once so temp/pages/ exists.
#
# Successor to HL7/fhircast-docs updateSiteBasedOnMarkdownChange.sh, fixed for
# the post-i18n layout (per-language _includes/<lang>/ and output/<lang>/).

set -euo pipefail

IG_ROOT="$(cd "$(dirname "$0")" && pwd)"
PAGES="$IG_ROOT/temp/pages"
SRC="$IG_ROOT/input/pagecontent"

if [ ! -d "$PAGES/_includes/en" ]; then
  echo "No $PAGES/_includes/en - run a full build (./_genonce.sh) at least once first." >&2
  exit 1
fi

# Languages to render. en is default; ru/uz overlay translations on top of the
# English base. Trim this list to go faster if you only need one language.
LANGS=(en ru uz)

# 1. Stage narrative into each per-language include dir, reproducing the
#    publisher's merge: English base first (the fallback for untranslated
#    pages), then overlay that language's translated pages on top.
stage_lang() {
  local lang="$1" inc="$PAGES/_includes/$lang"
  [ -d "$inc" ] || return 0

  # English base - fallback for any page without a translation.
  cp "$SRC"/*.md "$inc"/

  # Overlay this language's translated pages, if any (en has none).
  local tdir="$IG_ROOT/input/translations/$lang/pagecontent"
  if compgen -G "$tdir/*.md" > /dev/null; then
    cp "$tdir"/*.md "$inc"/
  fi

  # 1b. The publisher's i18n templates use a custom {% lang-fragment NAME.ext %}
  #     Liquid tag, defined only by its bundled Jekyll plugin (not left behind).
  #     Vanilla Jekyll can't parse it - it reads the tag name as 'lang' and
  #     aborts. The tag includes this language's staged variant
  #     (dependency-table.xhtml -> dependency-table-$lang.xhtml), so rewrite it
  #     into a standard include of that variant.
  sed -i -E "s/\\{%[[:space:]]*lang-fragment[[:space:]]+([^ }]+)\\.(xhtml|html|md)[[:space:]]*%\\}/{% include \\1-$lang.\\2 %}/g" "$inc"/*.md
}

for lang in "${LANGS[@]}"; do
  stage_lang "$lang"
done

# Root _includes is the default-language (en) fallback used by some templates.
cp "$SRC"/*.md "$PAGES/_includes"/
sed -i -E 's/\{%[[:space:]]*lang-fragment[[:space:]]+([^ }]+)\.(xhtml|html|md)[[:space:]]*%\}/{% include \1-en.\2 %}/g' "$PAGES/_includes"/*.md

# 2. Jekyll build (reads temp/pages/_config.yml, writes temp/pages/_site).
#    --incremental regenerates only changed pages on repeat runs; drop it for a
#    guaranteed-clean full Jekyll pass.
( cd "$PAGES" && jekyll build --incremental )

# 3. Mirror _site into output, preserving the en/ ru/ uz/ subdirectories.
#    (The old `cp _site/*` dropped these - that is why /en/ pages never updated.)
rsync -a "$PAGES/_site/" "$IG_ROOT/output/"

echo "updated narrative in: $IG_ROOT/output  (open output/{en,ru,uz}/index.html)"
