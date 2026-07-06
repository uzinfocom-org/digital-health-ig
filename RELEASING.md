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

`main` is ruleset-protected (PR + `sushi`/`ig-publisher` checks required, no
bypass), so the feed change must go through a PR rather than a direct push.
