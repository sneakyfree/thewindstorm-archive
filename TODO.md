# TODO: thewindstorm-archive (TheWindstorm.ai lane)

Real state (2026-11-04): this is a REVIEW COPY, not the live archive. The published issues live in the newsletter's
database and are served at https://thewindstorm.ai/archive (22 issues). This repo holds snapshots of issues 1-20
(dispatches 01-16), so corrections can be reviewed as pull requests and applied with scripts/apply.sh. It is updated by
hand only when a correction is needed. It is not synced on purpose: the database is the one source of truth.

## Now
- Nothing open.

## Waiting on
- Nothing.

## Later
- Snapshot issues 21+ the first time one of them needs a correction. Added 2026-11-04. They are fact-checked before
  publishing, so no correction is expected.

## Branches
- None. Only `main` exists on GitHub and on Windy Git (checked 2026-11-04).

## Done
- 2026-10-23: #15, apply.sh passes its token through the environment, not argv.
- 2026-10-22: 12 merged sources/* branches deleted after a check proved each tip equals its merged PR head and each file equals main.
- 2026-10-21: #14, fact-check corrections to dispatches 15 + 16 (issues 19 and 20, sent unchecked by the old Worker) applied to the live archive.
- 2026-10-21: #13, snapshot of dispatches 13-16 as they were live (rollback point).
- 2026-10-21: Windy Git pull mirror added and verified (windyadmin/thewindstorm-archive).
