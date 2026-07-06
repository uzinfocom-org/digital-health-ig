#!/usr/bin/env python3
"""Append a version <item> to docs/package-feed.xml (idempotent).

Usage: update_package_feed.py <version> <fhir_version>

Bumps <lastBuildDate> and inserts a new <item> before </channel>, using the
current UTC time as pubDate. Does nothing if the version is already present.
"""
import re
import sys
from datetime import datetime, timezone

REPO = "uzinfocom-org/digital-health-ig"
CREATOR = "Vadim Peretokin"
FEED = "docs/package-feed.xml"


def main():
    if len(sys.argv) != 3:
        sys.exit("Usage: update_package_feed.py <version> <fhir_version>")
    version, fhir_version = sys.argv[1], sys.argv[2]
    title = f"uz.dhp.core#{version}"

    with open(FEED, encoding="utf-8") as f:
        text = f.read()

    if f"<title>{title}</title>" in text:
        print(f"{title} already in feed; nothing to do.")
        return

    now = datetime.now(timezone.utc).strftime("%a, %d %b %Y %H:%M:%S +0000")
    url = f"https://github.com/{REPO}/releases/download/{version}/package.tgz"
    item = (
        "     <item>\n"
        f"       <title>{title}</title>\n"
        f"       <description>DHP Implementation Guide Package version {version}</description>\n"
        f"       <link>{url}</link>\n"
        f'       <guid isPermaLink="true">{url}</guid>\n'
        f"       <dc:creator>{CREATOR}</dc:creator>\n"
        f"       <fhir:version>{fhir_version}</fhir:version>\n"
        "       <fhir:kind>IG</fhir:kind>\n"
        f"       <pubDate>{now}</pubDate>\n"
        "     </item>\n\n"
    )

    text, n = re.subn(
        r"<lastBuildDate>.*?</lastBuildDate>",
        f"<lastBuildDate>{now}</lastBuildDate>",
        text,
        count=1,
    )
    if n == 0:
        sys.exit("ERROR: <lastBuildDate> not found in feed")

    marker = "  </channel>"
    idx = text.rfind(marker)
    if idx == -1:
        sys.exit("ERROR: </channel> not found in feed")
    text = text[:idx] + item + text[idx:]

    with open(FEED, "w", encoding="utf-8") as f:
        f.write(text)
    print(f"Added {title} to feed.")


if __name__ == "__main__":
    main()
