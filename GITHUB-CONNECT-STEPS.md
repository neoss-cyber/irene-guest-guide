# Connect your Netlify site to GitHub

You already have the guide live on Netlify. These steps add GitHub so you can update the site by pushing to GitHub instead of drag-and-drop. **Your link stays the same.**

---

## Step 1: Create a GitHub account (if you don’t have one)

1. Go to **https://github.com**
2. Click **Sign up**
3. Enter email, password, username → **Create account**
4. Confirm your email if asked

---

## Step 2: Create a new repository

1. On GitHub, click the **+** (top right) → **New repository**
2. **Repository name:** `irene-guest-guide` (or any name you like)
3. Leave **Public** selected
4. **Do not** tick "Add a README file"
5. Click **Create repository**

---

## Step 3: Upload your project to GitHub

1. On the new empty repo page, click **“uploading an existing file”**
2. **Drag and drop** (or choose) everything from your **Guest guider** folder:
   - **index.html** (the main file)
   - The **assets** folder (with all images inside it)
   - Any other files in the folder (e.g. DEPLOY-STEPS.md, .bat files – optional, they won’t affect the site)
3. At the bottom, type a message like **“Initial upload”** and click **Commit changes**

Your code is now on GitHub.

---

## Step 4: Connect Netlify to this GitHub repo

1. Log in to **Netlify** and open **your site** (the one you already deployed)
2. Go to **Site configuration** (or **Site settings**)
3. In the left menu, open **Build & deploy** → **Continuous deployment**
4. Click **Link repository** (or **Connect to Git provider**)
5. Choose **GitHub**. If asked, **authorize Netlify** to use your GitHub account
6. Select your **GitHub account** (or the organisation that has the repo)
7. Find and select the repo you created (e.g. **irene-guest-guide**) → **Install** or **Select repository**
8. **Configure build settings:**
   - **Branch to deploy:** `main` (default)
   - **Build command:** leave **empty**
   - **Publish directory:** type **`.`** (a single dot = root, where index.html is)
9. Click **Save** or **Deploy site**

Netlify will run a deploy from GitHub. Your **same site URL** (e.g. irene-guest-guide.netlify.app) will now show the version from GitHub.

---

## Step 5: From now on – how to update the guide

**Option A – Edit on GitHub (no Git on your PC)**  
1. Open your repo on GitHub (github.com / your-username / irene-guest-guide)  
2. Click the file you want to change (e.g. **index.html**)  
3. Click the **pencil icon** (Edit)  
4. Make your changes → scroll down → **Commit changes**  
5. Netlify will **automatically** redeploy in 1–2 minutes. Your link stays the same, content updates.

**Option B – Edit on your PC, then upload to GitHub**  
1. Edit your files in the **Guest guider** folder on your PC  
2. On GitHub, open the file (e.g. index.html) → **Edit** (pencil)  
3. Paste the new content (or drag-and-drop the updated file if GitHub allows it for that file)  
4. **Commit changes**  
5. Netlify auto-deploys again.

(If you later install **Git** on your PC, you can push changes from the folder with a few commands instead of editing on the website.)

---

## Done

- Your **same Netlify link** still works.  
- Your code is **backed up** on GitHub.  
- **Updates:** change files on GitHub (or push from PC with Git) → Netlify deploys automatically. No need to drag-and-drop on Netlify again.
