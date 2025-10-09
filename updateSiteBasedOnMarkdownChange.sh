# credit to Bas van den Heuvel, original script from https://github.com/HL7/fhircast-docs/blob/master/updateSiteBasedOnMarkdownChange.sh

cd temp/pages
cp ../../input/pagecontent/* _includes/; jekyll b

echo updated site: temp/pages/_site

cp -r _site/* ../../output

