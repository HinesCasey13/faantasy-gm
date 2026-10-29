# Initial GM review: Week 8, Thursday Oct 29, 2026 (6:40 PM ET)

Source key: **[API]** = Sleeper API data pulled today. **[News]** = reported news (linked). **[Proj]** = Sleeper/RotoWire projection converted to this league's scoring. **[GM]** = my interpretation. The full data tables are in `reports/latest.md`.

## Phase 1: Verified league overview

### Identity (verified) [API]
- Sleeper user `caseyhines13`, user_id `1400098126978691072`
- Team **Mango Chainsaw Sparky WA**, **roster_id 3**, the only roster owned by that user ID in league `1391289586650476544`

### League settings [API]
| Item | Value |
|---|---|
| League | FAAntasy Football, 12 teams, 2026, in season, NFL week 8 |
| Starters | QB, RB, RB, WR, WR, WR, TE, FLEX (RB/WR/TE), K, DEF |
| Bench / IR | 5 bench, 2 IR (Out and Doubtful players are IR-eligible; Questionable players are not) |
| Scoring | **Standard, 0 points per reception.** Pass: 0.04/yd (1 pt per 25 yd), **6 pts per TD**, −2 per INT. Rush/rec: 0.1/yd, 6 pts per TD. −2 per fumble lost. 2-pt conversion 2. |
| Kicker | FG 0–39 = 3, 40–49 = 4, 50+ = 5, miss −1; XP +1, missed XP −1 |
| Defense | Sack 1, INT 2, fumble recovery 2, TD 6, safety 2, blocked kick 2. Points allowed: 0 → 10, 1–6 → 7, 7–13 → 4, 14–20 → 1, 21–27 → 0, 28–34 → −1, 35+ → −4 |
| Waivers | `waiver_type 0` = **rolling priority waivers (not FAAB)**. A $100 FAAB budget is set, but nobody has spent any and claims carry no bids. Claims process **Wednesdays at about 3:15 AM ET** (seen on 10/21 and 10/28). Dropped players stay on waivers for 2 days. Unclaimed players are free agents you can add instantly. |
| Your waiver priority | **#8 of 12** |
| Trades | Deadline **week 11**, 2-day review, 6 veto votes needed |
| Playoffs | 6 teams, weeks 15–17. Keeper league (max 1 keeper). |

`playoff_seed_type = 1`: the API exposes this flag but doesn't document what it means. Check the playoff tiebreaker in the Sleeper app.

### Standings after week 7 [API]
| # | Team | W-L | PF |
|---|---|---|---|
| 1 | mulho | 6-1 | 819.0 |
| 2 | gabo0808 | 5-2 | 721.1 |
| 3 | Electrical Substation | 4-3 | 755.2 |
| 4 | Lex Luther's Burden | 4-3 | 752.5 |
| 5 | Lamarvelous Bijan | 4-3 | 741.2 |
| **6** | **Mango Chainsaw Sparky WA (you)** | **4-3** | **679.2** |
| 7 | 🔥AMOgeddon🔥 | 4-3 | 664.2 |
| 8–12 | Aiyukidding Me? 3-4, Daktivity 5 Funding 3-4, Short-timer 2-5, vartanmt 2-5, South Georgia Catfish 1-6 | | |

You hold the final playoff spot on a tiebreaker. Your PF is 9th of 12, so the 4-3 record is a little ahead of how the team has actually scored. **[GM]**

### Week 8 lineup (current = projection-optimal) [API/Proj]
| Slot | Player | Opp | Proj | Season PPG | Note |
|---|---|---|---|---|---|
| QB | Baker Mayfield (TB) | vs ATL | 17.5 | 11.9 | |
| RB | Quinshon Judkins (CLE) | @ PIT | 8.2 | 10.1 | 15 carries/g |
| RB | Rico Dowdle (PIT) | vs CLE | 7.0 | 5.0 | weakest starter |
| WR | Tetairoa McMillan (CAR) | **@ GB tonight** | 9.7 | 10.2 | |
| WR | DK Metcalf (PIT) | vs CLE | 7.9 | 6.4 | |
| WR | A.J. Brown (NE) | @ MIA | 8.7 | 3.4 | **Questionable** |
| TE | Dallas Goedert (PHI) | @ WAS | 6.8 | 7.0 | |
| FLEX | Matthew Golden (GB) | **vs CAR tonight** | 9.3 | 10.7 | **Questionable** |
| K | Matt Gay (LV) | @ NYJ | 7.5 | 10.1 | |
| DEF | Denver | vs KC | 7.8 | 8.7 | |

Bench: McCaffrey, Olave, Vele and Likely are all on **bye**. Herbert is the backup QB. Jordyn Tyson is on IR.

Opponent: **mulho (6-1)**, projected 111.1 vs your 90.3 **[Proj]**. You're about a 20-point underdog.

## Phase 2: Team analysis

### Strengths [API/GM]
- **TE: 2nd-best in the league.** Isaiah Likely (10.2 PPG) and Goedert (7.0) give you two real TEs. Start **Likely over Goedert** whenever both are active.
- **WR depth.** Olave (10.8), Golden (10.7), McMillan (10.2), Vele (7.5) and Metcalf (6.4), with Tyson stashed on IR. That's more WR depth than you can start.
- **Christian McCaffrey** (15.7 PPG) is your best player. He's on bye this week with a calf issue (Questionable).

### Weaknesses [API/GM]
1. **QB is last in the league: 12.1 PPG against a league norm of about 23.** In 6-point-passing-TD scoring this is the biggest gap on the roster, roughly 8–11 points a week.
2. **RB2.** Dowdle's 5.0 PPG and 38% snap share make him a bad weekly starter in standard scoring.
3. **A.J. Brown** has scored 3.4 PPG and is hurt again: limited on Wednesday, then missed Thursday's practice with knee and ankle problems **[News]**.
4. **No bench cover this week.** Four bench players are on bye, so one inactive starter leaves an empty slot unless you pick someone up.
5. **Bye crunch in week 11:** Judkins, Brown and Golden are all off (plus Penix if you claim him). Week 9 loses Dowdle and Metcalf. Week 10 loses Mayfield, Goedert and DEN.

### Recommended moves (ranked; none made, all need your approval)
1. **Claim Michael Penix Jr. (QB, ATL); drop Justin Herbert.** Penix averages 20.5 PPG and has scored 16.4, 29.1 and 26.4 in his last three, with 3 TD passes in each of the last two **[API/News]**. Aiyukidding dropped him Wednesday, so he's on waivers. You're behind 7 teams in priority, but most of them already carry two QBs; gabo0808 (#7) is the main one that might claim him. Start Mayfield this week anyway (17.5 vs Penix's 16.4 @ TB, which has a tough defense). Penix becomes your starter from week 9, and Mayfield covers his week-11 bye.
   - *Fallback if the claim fails:* claim **Aaron Rodgers (PIT)**, who's also on waivers. He has 19.8 PPG and is the best-projected QB available this week (19.7 vs CLE), but he's on bye in week 9.
2. **Tonight, only if Golden is ruled inactive** (the Packers announce this about 90 minutes before the 8:15 PM ET kickoff): you have no healthy FLEX on the bench.
   - Add free agent **Elijah Mitchell (RB, PHI)**. Barkley missed practice all week and is tracking to sit, which would make Mitchell the lead back Sunday night **[News]**. The risk is that Mitchell is on the practice squad and needs to be elevated.
   - Drop **Devaughn Vele**, start Mitchell at FLEX, and keep Herbert as the drop for the Penix claim.
   - If Golden is active, do nothing tonight.
3. **A.J. Brown: decide Sunday morning.** If Friday's report is Out or Doubtful, move Golden to WR if needed and put Mitchell (or Kendrick Bourne, WR, ARI, projected 5.8) in the open slot. The Sunday 9 AM review checks this.
4. **Trade for an RB2 using surplus WR/TE before the week-11 deadline.** **[GM]** Likely partners:
   - **gabo0808 (5-2):** worst WR group in the league (#12) and TE #9, with RBs to spare (Cook, Warren 13.6, Hall, Hampton). Pitch: Olave for Jaylen Warren.
   - **Lex Luther's Burden:** RBs #1 but WRs #10 and TE #10 (Gibbs, Kyren Williams 15.0, Aaron Jones 10.1, Henderson). Pitch: Olave + Goedert for Kyren Williams.
   - **Electrical Substation:** Mike Evans is Out, and they're deep at RB (Irving, Jeanty, Gordon, Mason). Pitch: Vele or Olave for Jordan Mason or Ollie Gordon.
   - **South Georgia Catfish (1-6, likely sellers):** Monangai (13.6) or Tuten (12.6).
5. **Don't chase** this week's trending TEs (Strange, Hockenson, Gesicki). Your TE room is already 2nd in the league.

### Keeper note [GM]
With one keeper allowed, your young pieces (Judkins, McMillan, Golden, Tyson) have value beyond this season. Weigh that before including them in trades.

### News sources
- Golden questionable, decision about 90 minutes before kickoff: [RotoWire](https://www.rotowire.com/football/headlines/matthew-golden-injury-questionable-for-thursday-644777), [Packers.com](https://www.packers.com/news/packers-list-four-questionable-rule-out-three-vs-panthers-week-8-injury-report), [Yahoo](https://sports.yahoo.com/articles/matthew-golden-playing-tonight-injury-103152440.html)
- A.J. Brown knee/ankle, DNP Thursday: [NESN](https://nesn.com/new-england-patriots/news/aj-brown-injury-update-patriots-week-8-dolphins/630c2085aea97ac958ce3de0), [Patriots.com](https://www.patriots.com/news/week-8-injury-report-patriots-at-dolphins-x9227), [RotoWire](https://www.rotowire.com/football/headlines/aj-brown-injury-not-seen-at-thursdays-practice-644930)
- Barkley tracking to miss, Mitchell expected to lead: [Yahoo](https://sports.yahoo.com/articles/fantasy-football-injury-impact-saquon-180306423.html), [NBC Philadelphia](https://www.nbcphiladelphia.com/news/local/eagles-injury-update-saquon-barkley-devonta-smith-out-again-commanders-week-8/4487924/)
- Penix/Rodgers waiver outlook: [CBS](https://www.cbssports.com/fantasy/football/news/fantasy-football-2026-week-8-waiver-wire/), [ESPN](https://www.espn.com/fantasy/football/story/_/page/FFWaiverWirePickUp-50286135/fantasy-football-waivers-free-agent-pickups-nfl-week-8)
