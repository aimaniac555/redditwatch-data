# Owner checklist — registry distribution

Everything in `registry/` is prepared and drafted, but nothing has been submitted, published, or
opened anywhere. These are manual, owner-decision steps. Do them in order; each one is independent
of the others except where noted.

## 1. Zenodo (DOI minting)

1. Create a Zenodo account at https://zenodo.org using GitHub login.
2. Enable the GitHub–Zenodo integration for the `redditwatch-data` repository
   (https://zenodo.org/account/settings/github/).
3. Create a GitHub release tagged `v2026-09-14` on `bryanflowers/redditwatch-data`. Zenodo will
   automatically archive it and mint a DOI.
4. Once the DOI is minted, paste it into:
   - `CITATION.cff` — replace the `# doi:` comment with a real `doi:` field.
   - The live site's `/data` page — add the DOI to the page's `sameAs` metadata.
   - `registry/zenodo/zenodo.json` and `.zenodo.json` — update `related_identifiers` if desired.

## 2. Hugging Face

1. Create a Hugging Face account/organisation (no personal name — use "Reddit Watch" as the org
   display name).
2. `huggingface-cli login`, then:
   `huggingface-cli repo create redditwatch-data --type dataset`
3. Push `registry/huggingface/README.md` (renamed to `README.md` at the repo root) together with
   the current contents of `data/` (the CSV/JSON files, not `manifest.json` unless desired).

## 3. Kaggle

1. Copy the current data files into `registry/kaggle/` alongside the prepared
   `dataset-metadata.json` and `description.md`.
2. From `registry/kaggle/`, run: `kaggle datasets create -p .`
3. Review the `id` field in `dataset-metadata.json` first — it is currently
   `bryanflowers/reddit-watch-open-data`; rename if you'd prefer a different Kaggle handle.

## 4. Awesome-list PRs

`registry/awesome-lists/` contains one drafted entry per target list, each marked
`DRAFT — HELD FOR OWNER APPROVAL`. Review `registry/awesome-lists/README.md` for the full list of
targets, then approve or reject each individually. **No PR will be opened without your written yes
for that specific list.** For each approved list: verify the section name against the list's
current live README (lists get reorganised), open the PR with the drafted title/body/line, and
mark it approved in the README table.

## 5. Show HN / r/datasets post

`registry/show-hn.md` contains one drafted Show HN post and one drafted r/datasets post, both
marked as drafts. Post at most the ONE approved Show HN submission — do not cross-post the same
launch to multiple large boards on the same day. Review the title and body against Reddit Watch's
actual live state before posting (row counts, categories, arc counts may have moved since drafting).

## 6. Google Dataset Search

No separate submission is needed. The `/data` page already carries indexable JSON-LD dataset
markup. To surface it in Google Dataset Search, simply verify `https://redditwatch.org/data` is
indexed in Google Search Console (it should already be, as part of normal site indexing) — no
additional registration step is required.
