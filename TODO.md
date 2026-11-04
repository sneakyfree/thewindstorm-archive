# TODO: thewindstorm-archive (TheWindstorm.ai lane)

Real state (2026-11-04): this is a REVIEW COPY, not the live archive. The published issues live in the newsletter's
database and are served at https://thewindstorm.ai/archive (22 issues). This repo holds snapshots of issues 1-22
(dispatches 01-18), so corrections can be reviewed as pull requests and applied with scripts/apply.sh. It is updated by
hand only when a correction is needed. It is not synced on purpose: the database is the one source of truth.

## Now
- Nothing open.

## Waiting on
- Grant: merge (or close) PR #18 (issue #21: two timing fixes) and PR #19 (issue #22: two "this week" -> "last week"
  fixes and one price comparison). Found by an independent fact-check on 2026-11-04; no wrong numbers, names or quotes.
  After a merge: tell GrantWhitmer.com (shared D1), then scripts/apply.sh on that file. Never re-email. Opened 2026-11-04.
  Nudge 2026-11-11.

## Later

## Branches
- fact-check/dispatch-17 (PR #18) and fact-check/dispatch-18 (PR #19): Grant's to merge.

## Done
- 2026-11-04: #17, snapshot of dispatches 17 + 18 (ids 21, 22) exactly as live (rollback point for #18/#19).
- 2026-10-23: #15, apply.sh passes its token through the environment, not argv.
- 2026-10-22: 12 merged sources/* branches deleted after a check proved each tip equals its merged PR head and each file equals main.
- 2026-10-21: #14, fact-check corrections to dispatches 15 + 16 (issues 19 and 20, sent unchecked by the old Worker) applied to the live archive.
- 2026-10-21: #13, snapshot of dispatches 13-16 as they were live (rollback point).
- 2026-10-21: Windy Git pull mirror added and verified (windyadmin/thewindstorm-archive).
