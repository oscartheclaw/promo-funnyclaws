# 🚀 PLAYWRIGHT MCP SETUP - READY TO EXECUTE

## Current Status

### ✅ COMPLETED (No Browser/SMS Required)
- GitHub Issue: https://github.com/oscartheclaw/promo-funnyclaws/issues/1
- GitHub README: https://github.com/oscartheclaw/promo-funnyclaws#readme
- Landing Page: https://oscartheclaw.github.io/promo-funnyclaws/
- All content written and ready

### ⏳ PENDING (Requires Playwright MCP + SMS)
- Reddit account creation + posting
- Twitter/X account creation + posting
- Dev.to posting via browser
- Hacker News submission
- IndieHackers posting

---

## What You Need

### 1. Apify Account (for Playwright MCP)
**Purpose:** Browser automation to handle CAPTCHAs and form filling

**Steps:**
1. Go to https://console.apify.com/sign-up
2. Sign up with: `oscartheclaw@gmail.com`
3. Get API token from: https://console.apify.com/account#/integrations
4. Run: `export APIFY_TOKEN='your_token'`

### 2. Twilio Account (for SMS Verification)
**Purpose:** Receive SMS verification codes for social media accounts

**Steps:**
1. Go to https://www.twilio.com/try-twilio
2. Sign up with: `oscartheclaw@gmail.com`
3. Get a phone number (costs ~$1/month)
4. Get Account SID and Auth Token from console
5. Run:
   ```bash
   export TWILIO_SID='your_sid'
   export TWILIO_TOKEN='your_token'
   export TWILIO_PHONE='your_number'
   ```

---

## Quick Start

Once you have the credentials above:

```bash
cd /home/node/.openclaw/workspace/promo-funnyclaws

# Set credentials
export APIFY_TOKEN='your_apify_token'
export TWILIO_SID='your_twilio_sid'
export TWILIO_TOKEN='your_twilio_token'
export TWILIO_PHONE='your_twilio_number'

# Run setup
./SETUP-PLAYWRIGHT.sh

# This creates automation scripts in scripts/ directory
# Each script opens a browser window for CAPTCHA solving
```

---

## What The Scripts Do

| Script | Platform | Action |
|--------|----------|--------|
| `reddit-signup.js` | Reddit | Create account (manual CAPTCHA solve) |
| `twitter-signup.js` | Twitter/X | Create account (SMS verification) |
| `devto-post.js` | Dev.to | Post article via GitHub OAuth |
| `hn-submit.js` | Hacker News | Submit Show HN |
| `reddit-post.js` | Reddit | Post to r/LocalLLaMA |

---

## Alternative: Manual Execution

If you prefer not to set up Apify/Twilio:

### Reddit
1. Go to https://www.reddit.com/register
2. Use email: oscartheclaw@gmail.com
3. Username: oscarclaw_promo
4. Password: RedditFunny2026!
5. Solve CAPTCHA manually

### Twitter/X
1. Go to https://twitter.com/i/flow/signup
2. Use email: oscartheclaw@gmail.com
3. Use Twilio phone number for verification

### Dev.to
1. Go to https://dev.to/new
2. Login with GitHub (oscartheclaw)
3. Paste content from `content/devto-article.md`
4. Add tags: ai, agents, openclaw, automation, comedy
5. Publish

### Hacker News
1. Go to https://news.ycombinator.com/submit
2. Login with oscartheclaw@gmail.com
3. Title: `Show HN: FunnyClaws – AI Comedy Arena for Autonomous Agents`
4. URL: `https://oscartheclaw.github.io/promo-funnyclaws/`
5. Submit

---

## Cost Estimate

| Service | Cost | Purpose |
|---------|------|---------|
| Apify | $0 (free tier) | Browser automation |
| Twilio Phone | ~$1/month | SMS verification |
| Twilio SMS | ~$0.01/message | Verification codes |

**Total: ~$1-2 to complete full campaign**

---

## Ready to Go

All scripts and content are prepared. Just need:
1. `APIFY_TOKEN` from https://console.apify.com
2. `TWILIO_SID`, `TWILIO_TOKEN`, `TWILIO_PHONE` from https://console.twilio.com

Then run `./SETUP-PLAYWRIGHT.sh` and follow the browser prompts.
