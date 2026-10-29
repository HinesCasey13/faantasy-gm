# FAAntasy Football GM: Sleeper data pipeline

A read-only pipeline that keeps a fresh briefing of league **FAAntasy Football** (`1391289586650476544`, team *Mango Chainsaw Sparky WA*, roster 3) at one stable URL. Your scheduled ChatGPT reviews read that URL.

## How it works

```
Sleeper public API (read-only, no login)
        │  hourly, GitHub Actions (free)
        ▼
sleeper_gm.py ──► reports/latest.md     briefing the reviews read
              ├─► data/snapshot.json    the same data as JSON
              └─► data/status.json      last refresh: ok/error
        │  committed to the GitHub repo
        ▼
https://raw.githubusercontent.com/HinesCasey13/faantasy-gm/main/reports/latest.md
        │  opened by each review
        ▼
ChatGPT scheduled tasks (Tue 7 PM, Thu 5 PM, Sun 9 AM ET) ──► recommendations to you
```

### Why the reviews don't call the Sleeper API directly
- The roster and matchup endpoints return only numeric player IDs. Turning those into names, positions and injury tags needs Sleeper's 15 MB player database, which a chat task can't download and search.
- Sleeper's projections and season stats are each about 2 MB of raw stat categories. They need converting to your league's scoring (0 PPR, 6-pt pass TD) to mean anything.
- I can't run or test ChatGPT from here. A small static Markdown page on GitHub is the format a browsing model is most likely to read reliably. Whether your ChatGPT tasks can open it is the one thing you need to confirm (step 3 below).

## What's automatic and what needs your approval
| Automatic | Never automatic (you do it in Sleeper) |
|---|---|
| Pulling league, roster, matchup, transaction, player, projection and stat data | Adding or dropping players |
| Building the briefing and recommendations | Waiver claims |
| Flagging injuries, byes and empty slots | Lineup changes |
| Recording refresh failures | Proposing, accepting or rejecting trades |

The pipeline has no Sleeper login and no write access. The public API is read-only, so it *cannot* change anything in your account. No password or token is requested or stored. Sleeper offers no official write API, so approved moves are always made by you in the Sleeper app.

## Setup status
| Piece | Status |
|---|---|
| Live Sleeper pull, tested with real league data | ✅ Done (`python3 sleeper_gm.py`) |
| Refresh failure handling (status file + warning banner at the top of the report) | ✅ Tested (simulated network failure, then recovery) |
| GitHub Actions hourly refresh | ✅ Live at https://github.com/HinesCasey13/faantasy-gm; first hosted run passed on 2026-10-29 |
| ChatGPT task prompts | ⏳ Written (`chatgpt_task_prompts.md`); you paste them into your existing tasks |

### Step 1: publish the repo (one time) ✅ done
Created `HinesCasey13/faantasy-gm` (public, so ChatGPT can read it without logging in). Everything in it is already public: anyone with your league ID can pull the same data from Sleeper. No passwords, emails or tokens are included. `publish_to_github.sh` is kept only in case you need to recreate the repo.

### Step 2: confirm the hourly refresh
On GitHub, go to repo → **Actions** → *Refresh Sleeper data*. Runs show at :07 past each hour; GitHub's scheduler can be 5–30 minutes late. Open the URL above and check the `Generated` timestamp.

### Step 3: update your three ChatGPT tasks
Edit the existing tasks (don't create new ones) and paste the prompts from `chatgpt_task_prompts.md`. Then use **Run now** on one task, or paste the Tuesday prompt into a normal chat. If the answer quotes your real roster and the `Generated` time, the connection works. If ChatGPT says it can't open the URL, see Troubleshooting.

## Cost
$0. The Sleeper API is free. GitHub Actions is free for public repos, and this job uses about 1 minute per run. You need no subscription beyond the ChatGPT plan you already use for scheduled tasks.

## Maintenance and troubleshooting
| Symptom | Fix |
|---|---|
| Report starts with **WARNING: LATEST DATA REFRESH FAILED** | Repo → Actions → open the failed run to see the error. Sleeper outages usually clear by the next hourly run. GitHub also emails you when a run fails. |
| `Generated` timestamp is hours old with no banner | The workflow isn't running. Check Actions; GitHub disables scheduled workflows after 60 days without repo activity (the hourly commits count as activity). Click *Enable workflow*, then *Run workflow*. |
| ChatGPT task can't open the URL | Try the same prompt in a normal chat. If that works but the scheduled task doesn't, scheduled tasks lack browsing in your plan. Fallbacks: (a) run the review manually in a chat, or (b) move the three reviews to Claude scheduled tasks, which can run `sleeper_gm.py` directly on this Mac. |
| Need fresh data right now | Repo → Actions → *Refresh Sleeper data* → *Run workflow*, or run locally: `python3 sleeper_gm.py` |
| New season or new league | Change `LEAGUE_ID` at the top of `sleeper_gm.py`. |

## Data notes and limitations
- **Projections** come from Sleeper's undocumented `/projections` endpoint (RotoWire data), converted to your league's scoring. If that endpoint fails, the report says so and skips the lineup optimizer; everything else still refreshes.
- **Waiver status per player isn't in the API.** The report marks players dropped within the 2-day clear window as "likely on waivers". Players whose game has kicked off are also locked until the next waiver run.
- **Game kickoff times** aren't in Sleeper's schedule feed, only dates. The reviews look kickoff times up.
- **`playoff_seed_type = 1`** isn't documented by Sleeper. Check the playoff tiebreaker in the app.
- Usage stats (snap %, targets/g, carries/g) come from Sleeper's season stats. Routes run and red-zone share aren't in the API; the reviews get those from web sources.

## Files
| File | Purpose |
|---|---|
| `sleeper_gm.py` | The pipeline (Python 3.9+, standard library only) |
| `reports/latest.md` | Current briefing (refreshed hourly) |
| `reports/2026-10-29_initial_review.md` | Phase 1–2 league overview and initial team analysis |
| `chatgpt_task_prompts.md` | Exact prompts for your three existing ChatGPT tasks |
| `data/snapshot.json`, `data/status.json` | Machine-readable snapshot and last-refresh status |
| `.github/workflows/refresh.yml` | Hourly GitHub Actions job |
| `publish_to_github.sh` | One-time repo creation |
