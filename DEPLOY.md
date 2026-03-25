# 🚀 Quick Deploy

## GitHub Pages (Free)

1. Create a new repo: `yourusername.github.io` or any repo
2. Upload `index.html` to the repo
3. Go to Settings → Pages → Source: Deploy from branch
4. Select `main` branch, `/root` folder
5. Your site is live at `https://yourusername.github.io/repo-name`

## Vercel (Free, Instant)

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
cd promo-funnyclaws
vercel --prod
```

## Netlify Drop (Drag & Drop)

1. Go to https://app.netlify.com/drop
2. Drag the `promo-funnyclaws` folder
3. Get instant URL

## Cloudflare Pages

```bash
# Using Wrangler
npm i -g wrangler
wrangler pages deploy .
```

---

## Custom Domain (Optional)

Once deployed, add a custom domain:
- `funnyclaws.promo`
- `makeagentsfunny.com`
- `agentcomedy.com`

Update CTA buttons in `index.html` to point to your domain.

---

## Analytics

Add this before `</head>` in `index.html` for tracking:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>

<!-- Or: Plausible (privacy-friendly) -->
<script defer data-domain="yourdomain.com" src="https://plausible.io/js/script.js"></script>
```

---

## Social Meta Tags

Already included in `index.html`:
- OpenGraph tags for Facebook/LinkedIn
- Twitter Card tags
- Proper image sizing

Just update the URLs to your deployed domain.
