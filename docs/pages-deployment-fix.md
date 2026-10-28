# Pages deployment repair — 2026-10-28

## Cause

Run `40658111161` successfully built and uploaded both the blog and the resume.
Its deployment archive contains `zx-resume/index.html`, the Rockies CSS/JavaScript and hero image.

However, the repository's Pages setting was still `build_type: legacy`, publishing directly
from `master:/`. A second, GitHub-managed `pages build and deployment` run (`40658110707`)
was triggered by the same push. This branch build follows the root Jekyll exclusion of
`zx-resume/`, and competes with the custom workflow that assembles both sites. The observed
result was a working homepage but HTTP 404 for the resume and its assets.

## Repair

- Set repository Pages publishing mode to `workflow` (GitHub Actions), using the Pages API.
- Keep a single custom build/deployment workflow as the publishing source.
- Add a deploy preflight that rejects branch publishing mode with a clear error.
- Upgrade checkout, upload-pages-artifact and deploy-pages to Node.js 24-compatible releases.
  The earlier Node.js 20 notices were warnings, not the cause of the missing resume.
- After deployment, check the public homepage, resume HTML, CSS, JavaScript and hero image.
  Retry for CDN propagation, and fail the workflow if the site remains unavailable or serves
  unexpected content. A deployment API success alone is no longer the final check.

Keep Settings → Pages → Source set to **GitHub Actions**. Do not switch it back to branch publishing.

## Verification

Repair commit: `98901c36`. [Actions run 40659095157](https://github.com/ziming-zx/ziming-zx.github.io/actions/runs/40659095157)
completed successfully, including the Jekyll build, publishing-mode guard, deployment and public-site checks.
Independent HTTP requests confirmed status 200 for `/`, `/publications/`, `/zx-resume/`,
the CV CSS, JavaScript and hero image. The live CV includes the current SINOPEC email address.
Only the custom website workflow ran for the repair push; the legacy branch-publishing run was not triggered.
