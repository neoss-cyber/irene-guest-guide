# Put your Guest Guide online (private link)

Your guide is ready. These steps get it online so only people with the link (or QR) can see it. **It will not appear on Google.**

---

## Step 1: Create a Netlify account (free)

1. Go to **https://www.netlify.com**
2. Click **Sign up**
3. Sign up with **Email**, or **Google** / **GitHub** if you prefer
4. Confirm your email if asked

---

## Step 2: Upload your guide

1. Log in to Netlify
2. On the main screen, find **“Add new site”** → **“Deploy manually”** (or **“Drag and drop your site output folder here”**)
3. **Drag and drop** your whole **Guest guider** folder (the one that contains `index.html` and the `assets` folder) into the drop zone
   - Make sure the folder contains:
     - `index.html` (in the root of the folder)
     - `assets` (folder with all images)
4. Wait until the deploy finishes (usually 10–30 seconds). You’ll see **“Published”** or **“Site is live”**

---

## Step 3: Get your link

1. Netlify will show a URL like: **`https://random-name-12345.netlify.app`**
2. You can **rename it** to something nicer:
   - Go to **Site configuration** (or **Domain settings**) → **Domain management**
   - Click **Options** next to the netlify.app domain → **Edit site name**
   - Change to e.g. **`irene-acharavi-guide`**  
   - Your link becomes: **`https://irene-acharavi-guide.netlify.app`**
3. **Copy that link** — this is the link you’ll share with guests (and they can share it with family, e.g. their son).

---

## Step 4: Share with guests

- Send the link in a **welcome email** or **booking confirmation**
- Example text: *“Your guest guide for Acharavi & Corfu: [paste link]. Save it on your phone or share it with family.”*
- Optional: create a **QR code** that points to this link and put it on a card in the room or at reception (use any free QR generator, e.g. **https://www.qr-code-generator.com** — paste your link, download the QR image, print it).

---

## Done

- The guide is **online** and works on phone and desktop.
- It **won’t appear on Google** (the `noindex` tag in your page tells search engines not to list it).
- **Only people with the link** (or who scan your QR) can open it — and they can share the link with others if they want.

---

## If you change the guide later

1. Edit your files (e.g. in the same **Guest guider** folder)
2. Go back to Netlify → your site → **Deploys**
3. Drag and drop the **same folder again** (with the updated files)
4. Netlify will replace the old version; the **link stays the same**

No need to create a new site or new link each time.
