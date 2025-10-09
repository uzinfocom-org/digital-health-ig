# Credit to Bas van den Heuvel, original script from https://github.com/HL7/fhircast-docs/blob/master/updateSiteBasedOnMarkdownChange.sh

# Change to the temp/pages directory
Set-Location "temp/pages"

# Copy all files from input/pagecontent to _includes directory
Copy-Item "../../input/pagecontent/*" "_includes/" -Recurse -Force

# Build the Jekyll site
jekyll b

# Display update message
Write-Host "updated site: temp/pages/_site"

# Copy the built site to output directory
Copy-Item "_site/*" "../../output" -Recurse -Force