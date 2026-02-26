# Guest Guide — Acharavi & Corfu

A simple, mobile-friendly guest guide for your apartments in Corfu. Focuses on **Acharavi** and general **Corfu** tips. Guests can open it via link or by scanning a QR code.

## What’s inside

- **index.html** — Single-page guide (no build step). Works offline once loaded if you host it.
- Sections: Acharavi intro, beaches nearby, eat & drink, practical info, and a link to [visit.corfu.gr](https://visit.corfu.gr/) for more discovery.

## How to share with guests

### Option 1: Send the link

1. Upload the folder to any host that serves static files, for example:
   - **Netlify** or **Vercel** (drag-and-drop the folder or connect a Git repo).
   - **GitHub Pages** (push the repo and enable Pages for the branch that contains `index.html`).
   - Your own web space (FTP) — upload `index.html` (and keep the same file name so the URL is `yoursite.com/` or `yoursite.com/guest-guide/`).
2. Send guests the full URL (e.g. `https://your-project.netlify.app` or `https://yourusername.github.io/guest-guider`).

### Option 2: QR code

1. Host the guide as above so you have a public URL.
2. Generate a QR code that points to that URL:
   - Use a free generator such as [qr-code-generator.com](https://www.qr-code-generator.com/) or [goqr.me](https://goqr.me/).
   - Enter your guide URL and download the QR image.
3. Print the QR and place it in the apartment (e.g. welcome sheet, fridge magnet, or card by the door). Guests scan it with their phone camera to open the guide.

## Running locally (optional)

- Double-click `index.html` to open in a browser, or  
- From the project folder run a simple server, e.g.  
  `npx serve .`  
  Then open the URL shown (often `http://localhost:3000`). Useful for checking before you upload.

## Customising

- Edit **index.html** to change text, add your apartment name, contact details, or extra sections (e.g. house rules, WiFi, key collection).
- The design uses CSS variables at the top of the `<style>` block (`:root`). You can change colours there (e.g. `--sea`, `--cream`, `--terracotta`) to match your branding.

No backend or database required — just host the file and share the link or QR.
