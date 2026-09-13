# Show HN draft — DRAFT, held for owner approval

Nothing here has been posted. This is a single drafted submission, plus one alternative version
for r/datasets covering the same facts. Post at most one of these per launch (see
`registry/OWNER-CHECKLIST.md`, item 5) — do not cross-post the identical launch to multiple large
boards on the same day.

## Show HN (Hacker News)

**Title (≤ 80 chars, currently 68):**

> Show HN: Open dataset of 346 documented Reddit controversies (2005-2026)

**Body:**

Reddit Watch (https://redditwatch.org) is an independent archive of publicly documented Reddit
controversies and banned subreddits, 2005 to 2026. It's not affiliated with, endorsed by, or
sponsored by Reddit, Inc. — it's a third-party sourced archive, built the same way you'd build any
citation-backed reference site.

Every one of the 346 issue records and 207 banned-subreddit records is traced to a cited source —
news reporting, official Reddit statements, moderator/user statements, or Reddit's own public
posts — roughly 3,300 citations in total. There's an ongoing link-integrity program that
periodically re-checks every cited URL and archives it to the Wayback Machine, so citations stay
checkable even after the original link rots.

The open data repo (https://github.com/bryanflowers/redditwatch-data) has CSV and JSON snapshots
of issues, banned subreddits, and the full per-citation source index, refreshed weekly, plus a
free JSON API (https://redditwatch.org/api-docs). Everything is CC BY 4.0. Feedback on the data
model, gaps in coverage, or citations that need a second look is welcome.

## r/datasets (alternative version, same facts)

**Title:**

> [OC] Open dataset of 346 documented Reddit controversies + 207 banned subreddits (2005-2026), CC BY 4.0

**Body:**

Reddit Watch (https://redditwatch.org) is an independent, sourced archive of Reddit's documented
controversies and issues from 2005 to 2026 — not affiliated with Reddit, Inc.

The dataset covers 346 issue records and 207 banned-subreddit records, each with categorisation,
dates, and full source citations (news reporting, official statements, moderator/user statements,
and Reddit's own public posts — roughly 3,300 citations total). Cited URLs are periodically
re-checked and archived to the Wayback Machine as part of an ongoing link-integrity program, so
sources stay verifiable over time.

CSV and JSON snapshots (issues, banned subreddits, and a flattened per-citation source file) are
mirrored to a GitHub repo (https://github.com/bryanflowers/redditwatch-data), refreshed weekly,
alongside a free JSON API (https://redditwatch.org/api-docs). Licensed CC BY 4.0. Happy to answer
questions about methodology or take suggestions on what's missing.
