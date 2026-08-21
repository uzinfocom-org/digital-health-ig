# Releasing

Publishing a release is automated by [`.github/workflows/release.yml`](.github/workflows/release.yml).

## Steps

1. **Prepare-release PR.** Open a PR that:
   - bumps `version:` in `sushi-config.yaml` to `X.Y.Z`, and
   - rolls the changelog `### In development` section into a `### Version X.Y.Z`
     section (en/ru/uz), resetting *In development* to `(No changes yet)`.

   Merge it once CI is green.

2. **Tag the release commit** on `main` and push the tag:

   ```bash
   git checkout main && git pull
   git tag X.Y.Z && git push origin X.Y.Z
   ```

3. The **Release** workflow then automatically:
   - builds the IG,
   - verifies the built package is `uz.dhp.core#X.Y.Z` (and that the tag matches
     `sushi-config.yaml`),
   - creates the GitHub Release `X.Y.Z` with `package.tgz` attached, and
   - opens a PR adding `X.Y.Z` to [`docs/package-feed.xml`](docs/package-feed.xml)
     so the FHIR package registry discovers it.

4. **Merge the package-feed PR.**

5. **Announce the release by email** to the implementation teams and to the
   Civitta review. Send it once the package feed PR is merged, so the version is
   actually installable when people go looking for it.

   The email needs:
   - the version and the package coordinates (`uz.dhp.core#X.Y.Z`),
   - a 2-3 sentence summary of what changed, written from the
     `### Version X.Y.Z` changelog section - what is new, and what implementers
     have to change on their side (renamed canonicals, tightened bindings,
     removed artifacts),
   - links to the [guide](https://dhp.uz/fhir/core), the
     [changelog](https://dhp.uz/fhir/core/changelog.html) and the GitHub release.

   Call out breaking changes explicitly in the summary rather than leaving them
   to be found in the changelog - they are the reason the email exists.

`main` is ruleset-protected (PR + `sushi`/`ig-publisher` checks required, no
bypass), so the feed change must go through a PR rather than a direct push.
