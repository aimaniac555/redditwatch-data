# Reddit Watch Open Data

Reddit Watch (https://redditwatch.org) is an independent, sourced public archive of Reddit's
documented controversies and issues, 2005–2026. This dataset mirrors the open data published at
https://redditwatch.org/data, refreshed weekly. **Reddit Watch is not affiliated with, endorsed
by, or sponsored by Reddit, Inc.**

## Licence

Licensed **CC BY 4.0** (https://creativecommons.org/licenses/by/4.0/legalcode) — unlike some
open-data projects, this covers the full dataset with no non-commercial restriction. Attribution
is required for any use:

> Data: Reddit Watch (https://redditwatch.org/data), an independent archive not affiliated with
> Reddit, Inc.

Source texts cited within the dataset (news articles, official statements, etc.) remain the work
of their original publishers and are summarised/cited here, not relicensed.

## What's in this dataset

- **`issues.csv`** — 346 documented Reddit controversies and issues (2005–2026 snapshot), each
  with categorisation across 8 site categories, membership in up to 17 story arcs, Reddit's
  documented response where reported, and a source-citation count.
- **`banned-subreddits.csv`** — 207 records of subreddits banned, quarantined, or otherwise
  actioned by Reddit, with documented reason, date, and related-issue/ban-wave grouping where
  applicable.
- **`sources.csv`** — the flattened per-citation index spanning every Reddit Watch record type (not just the two files above), roughly 3,300
  rows, for auditing any claim back to its named source.

## Methodology — read before use

Every claim is traced to a cited source: news reporting, official Reddit statements,
moderator/user statements, or Reddit's own public posts. An ongoing link-integrity program
periodically re-checks every cited URL and archives it to the Wayback Machine; `archive_url` is
populated once a snapshot exists. Full methodology: https://redditwatch.org/transparency.

## Corrections

If you believe a record misstates or omits material facts, or a citation no longer supports the
claim it's attached to, email admin@redditwatch.org with the record's `slug`/`name` and the
citation in question.

## Full data hub

https://redditwatch.org/data — includes the `issues.json` and `aggregates.json` files, a free
JSON API (https://redditwatch.org/api-docs), and citation guidance.
