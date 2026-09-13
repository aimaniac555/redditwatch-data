---
license: cc-by-4.0
language:
  - en
tags:
  - reddit
  - content-moderation
  - platform-governance
  - trust-and-safety
  - online-communities
pretty_name: Reddit Watch Open Data
size_categories:
  - n<1K
configs:
  - config_name: issues
    data_files:
      - split: csv
        path: "issues.csv"
      - split: json
        path: "issues.json"
  - config_name: banned-subreddits
    data_files:
      - split: csv
        path: "banned-subreddits.csv"
  - config_name: sources
    data_files:
      - split: csv
        path: "sources.csv"
  - config_name: aggregates
    data_files:
      - split: json
        path: "aggregates.json"
---

# Reddit Watch Open Data

Reddit Watch (https://redditwatch.org) is an independent, sourced public archive of Reddit's
documented controversies and issues, 2005–2026. This dataset mirrors the open data published at
https://redditwatch.org/data, refreshed weekly. **Reddit Watch is not affiliated with, endorsed
by, or sponsored by Reddit, Inc.**

## Dataset summary

| File | Rows | Licence |
|---|---|---|
| `issues.csv` / `.json` | 346 documented issues (2005–2026 snapshot) | CC BY 4.0 |
| `banned-subreddits.csv` | 207 banned/quarantined-subreddit records | CC BY 4.0 |
| `sources.csv` | ~3,300 flattened per-citation rows across all record types | CC BY 4.0 |
| `aggregates.json` | pre-computed totals and by-year/reason breakdowns | CC BY 4.0 |

### `issues.csv` / `.json`

346 documented Reddit controversies and issues, each with a short and full description,
categorisation across 8 site categories, membership in up to 17 story arcs, Reddit's response
where reported, and full source citations.

Columns (`issues.csv`): `slug, title, date, year, start_year, end_year, categories,
short_description, impact, reddit_response, source_count, arc_slugs, url, last_updated`.

`issues.json` carries the same records plus `fullDescription` and a structured `sources[]` array
(`label, url, type, year, archiveUrl?`).

### `banned-subreddits.csv`

207 subreddits banned, quarantined, or otherwise actioned by Reddit, with documented reason, date,
and any related issue or ban-wave grouping.

Columns: `name, action, date, year, reason, reason_category, subscribers, related_issue_slug,
ban_wave_slug, source_count, url`.

### `sources.csv`

The flattened per-citation index spanning every Reddit Watch record type — issues, banned subreddits, convictions, lawsuits, regulation, breaches, outages, ban waves, policy changes, and more — one row per citation, for
auditing any claim back to its named source.

Columns: `record_type, record_key, record_title, source_label, source_url, source_type,
source_year, archive_url, record_url`.

### `aggregates.json`

Pre-computed totals and breakdowns by year and by ban reason — no per-record detail.

## Methodology — read before use

Every claim is traced to a cited source (news reporting, official Reddit statements,
moderator/user statements, or Reddit's own public posts) in `sources.csv` / `sources[]`. An
ongoing link-integrity program periodically re-checks every cited URL and archives it to the
Wayback Machine; `archive_url` / `archiveUrl` is populated once a snapshot exists. Full methodology:
https://redditwatch.org/transparency.

## Licence

This dataset is licensed **CC BY 4.0**
(https://github.com/aimaniac555/redditwatch-data/blob/main/LICENSE.md). Source texts cited within
the dataset (news articles, official statements, etc.) remain the work of their original
publishers and are summarised/cited here, not relicensed.

Required attribution line:

> Data: Reddit Watch (https://redditwatch.org/data), an independent archive not affiliated with
> Reddit, Inc.

## Citation

```bibtex
@misc{redditwatch_data,
  author = {{Reddit Watch}},
  title = {Reddit Watch open data: documented Reddit controversies and banned subreddits, 2005-2026},
  year = {2026},
  url = {https://redditwatch.org/data},
  note = {Snapshot 2026-09-14}
}
```

## Corrections

Email admin@redditwatch.org with the record's `slug`/`name` and the citation in question if you
believe a record misstates or omits material facts.

## Full data hub

https://redditwatch.org/data — includes a free JSON API (https://redditwatch.org/api-docs) and
citation guidance.
