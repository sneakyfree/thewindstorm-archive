# The Windstorm: dispatch archive (review copy)

The published dispatches at https://thewindstorm.ai/archive live in Cloudflare D1
(`grantwhitmer-admin`, table `articles`, column `body_html`), not in git. This repo holds a
snapshot of each published dispatch so edits can be reviewed as ordinary pull requests.

- `dispatches/NN-<slug>.html`: header comments (D1 id, publish time, subject, preview), then `body_html` exactly as stored.
- One PR per dispatch. Grant reviews and merges each one himself.
- After a merge, `scripts/apply.sh dispatches/<file>` writes that file's body (and subject/preview if the header changed) back to D1. The page is rendered live from D1, so there's no site deploy.

Sourcing rule (Grant, 2026-09-23): add a source link wherever one exists, soften any stat that can't be sourced, keep the voice, never unpublish.
