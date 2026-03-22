# son-of-claude

A Claude Code tool that monitors your Microsoft Teams and responds to messages — no Graph API, no webhooks, no admin permissions. Just vibes.

## Why

You're deep in focus, but Teams keeps lighting up. You don't want to leave people hanging, but every context switch costs you. Son of Claude acts as your AI representative — it replies to messages so your coworkers stay unblocked while you stay in the zone. And because it runs from Claude Code with access to your local repos, it can give real answers about your code, architecture, and projects — not just "I'll get back to you."

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

## Other platforms

This is set up for Microsoft Teams, but it works with any browser-based messaging platform (Slack, Discord, Google Chat, etc.). Just update `BRAIN.md` with the right URL and interaction steps.

## Requirements

- [Claude Code](https://claude.ai/code) v2.0.73+
- [Claude in Chrome extension](https://code.claude.com/docs/en/chrome)
- A paid Anthropic plan (Pro, Max, Teams, or Enterprise)

## Disclaimer

This project is not affiliated with or endorsed by Anthropic. Agentic AI tools, including those that operate through browser automation, are inherently susceptible to prompt injection attacks and other adversarial inputs. Users of Son of Claude should exercise sound judgment, review the tool's behavior regularly, and use it at their own discretion. Users are responsible for complying with their employer's policies, applicable laws, and [Anthropic's Terms of Service](https://www.anthropic.com/legal/consumer-terms). The author of this tool assumes no responsibility or liability for any unintended actions, data exposure, or misuse arising from the use of Son of Claude, and does not endorse or encourage deceptive use. By using this tool, you acknowledge and accept these risks.