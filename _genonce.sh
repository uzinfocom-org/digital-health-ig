#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

echo "Running SUSHI..."
sushi .
if [ $? -ne 0 ]; then
	echo "SUSHI failed. Aborting..."
	exit 1
fi

# Remove structuredefinition-implements from generated SDs
# (FHIR R5 core spec references this extension but it is not published in the R5 package - known upstream HL7 issue)
python3 - <<'EOF'
import json, glob, os
ext_url = 'http://hl7.org/fhir/StructureDefinition/structuredefinition-implements'
for path in glob.glob('fsh-generated/resources/StructureDefinition-*.json'):
    with open(path) as f:
        data = json.load(f)
    exts = data.get('extension', [])
    filtered = [e for e in exts if e.get('url') != ext_url]
    if len(filtered) < len(exts):
        data['extension'] = filtered
        if not data['extension']:
            del data['extension']
        with open(path, 'w') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        print(f'  Removed structuredefinition-implements from {os.path.basename(path)}')
EOF

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption -no-sushi $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption -no-sushi $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
