#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking terminology server availability...
if curl -sSf --max-time 15 --retry 2 https://tx.fhir.org/r5/metadata > /dev/null 2>&1; then
	echo "Online (tx.fhir.org)"
	txoption=""
elif curl -sSf --max-time 15 --retry 2 https://tx.hl7europe.eu/r5/metadata > /dev/null 2>&1; then
	echo "Online (tx.hl7europe.eu)"
	txoption="-tx https://tx.hl7europe.eu/r5"
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8 -Xmx10g"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi
