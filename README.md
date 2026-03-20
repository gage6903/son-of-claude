# son-of-claude

A Claude Code tool that monitors your Microsoft Teams and responds to messages — no Graph API, no webhooks, no admin permissions. Just vibes.

## How it works

Claude Code's `--chrome` flag lets it control your browser. Son of Claude runs in a loop — every couple of minutes, it opens Teams in Chrome, checks for unread messages, and responds on your behalf. It has access to your local repos, so it can give real answers about your code and projects.

Its personality and tone come from `SOUL.md`. The rules — who to respond to, who to ignore, what it has access to — live in `BRAIN.md`.

Why browser automation instead of the Graph API? No Azure AD app registration, no OAuth, no webhooks, no admin permissions required. Claude Code with `--chrome` uses your existing browser session.

## Setup

1. Download the 3 files: `SOUL.md`, `BRAIN.md`, and `run.bat` (or `run.sh` if you are on Mac/Linux).
2. Drop them in a root folder containing your repos and files of interest (make sure there's nothing sensitive in there)
3. Open `BRAIN.md` and `SOUL.md` to customize the personality and set your do's and don'ts
4. Double-click `run.bat` — it checks Teams every **2 minutes**
5. First run, Claude will open Chrome — you'll probably need to sign into Teams

To change the polling interval, run it from the command line with the number of seconds: `.\run.bat 300` for every 5 minutes.

On Mac/Linux, open a terminal, `cd` to the folder, and run `./run.sh` (or `./run.sh 300` for a custom interval).

## Requirements

- [Claude Code](https://claude.ai/code) v2.0.73+
- [Claude in Chrome extension](https://code.claude.com/docs/en/chrome)
- A paid Anthropic plan (Pro, Max, Teams, or Enterprise)