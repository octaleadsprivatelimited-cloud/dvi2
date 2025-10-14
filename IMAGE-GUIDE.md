# Image Replacement Guide - DVI Studios

## 📸 Current Image Structure

Your website uses images in the following locations:

### 1. **Slider Images** (Homepage Gallery)
Location: `dist/assets/images/`

The slider uses 17 images:
- `slide-1.jpg` to `slide-17.jpg`

**Current categories:**
- **Fashion**: slide-1, 2, 4, 5, 7, 8, 9, 14, 15
- **Nature**: slide-3, 11, 12, 13
- **Portraits**: slide-6, 10, 16, 17

### 2. **Other Images**
- `logo.png` and `logo-dark.png` - Logo (currently removed from display)
- `bg-menu.jpg` - Background menu image
- `blog-article.jpg` - Blog article images
- `favicon.jpg` - Browser tab icon
- `avatar-*.jpg` - Team member avatars
- `team-member-*.jpg` - Team photos

---

## 🔧 How to Replace Images from Localhost

### **Method 1: Replace Existing Images (Recommended)**

1. **Prepare Your Images:**
   - Recommended size: 1920x1080 or larger (16:9 ratio works best)
   - Format: JPG or PNG
   - Optimize images for web (compress to reduce file size)

2. **Name Your Images:**
   - Name them `slide-1.jpg`, `slide-2.jpg`, etc.
   - Or keep your original names and update HTML files

3. **Copy Images to Project:**
   ```bash
   # Navigate to images directory
   cd /Users/sri/Downloads/umbrella-2/dist/assets/images/
   
   # Copy your images (example)
   cp /path/to/your/image1.jpg slide-1.jpg
   cp /path/to/your/image2.jpg slide-2.jpg
   # ... repeat for all slides
   ```

4. **Test Locally:**
   ```bash
   # Open the site in browser
   open /Users/sri/Downloads/umbrella-2/dist/index.html
   ```

### **Method 2: Add New Images with Different Names**

If you want to keep your image names, update the HTML files:

**Edit `dist/index.html`** (lines 88-138):
```html
<!-- Change from: -->
<img src="assets/images/slide-1.jpg" alt="">

<!-- To: -->
<img src="assets/images/your-image-name.jpg" alt="">
```

---

## 📋 Quick Image Replacement Script

Create this script to batch replace images:

```bash
#!/bin/bash
# Save as: replace-images.sh

# Set your source images directory
SOURCE_DIR="/path/to/your/images"
DEST_DIR="/Users/sri/Downloads/umbrella-2/dist/assets/images"

# Copy images
cp "$SOURCE_DIR/image1.jpg" "$DEST_DIR/slide-1.jpg"
cp "$SOURCE_DIR/image2.jpg" "$DEST_DIR/slide-2.jpg"
cp "$SOURCE_DIR/image3.jpg" "$DEST_DIR/slide-3.jpg"
# ... add more as needed

echo "✅ Images replaced successfully!"
```

Run it:
```bash
chmod +x replace-images.sh
./replace-images.sh
```

---

## 🎨 Image Categories in index.html

You can change which category each slide belongs to:

```html
<!-- Fashion category -->
<div class="nk-slider-item" data-categories="Fashion">
    <img src="assets/images/slide-1.jpg" alt="">
</div>

<!-- Nature category -->
<div class="nk-slider-item" data-categories="Nature">
    <img src="assets/images/slide-3.jpg" alt="">
</div>

<!-- Portraits category -->
<div class="nk-slider-item" data-categories="Portraits">
    <img src="assets/images/slide-6.jpg" alt="">
</div>

<!-- Multiple categories (separate with |) -->
<div class="nk-slider-item" data-categories="Fashion|Portraits">
    <img src="assets/images/slide-new.jpg" alt="">
</div>
```

---

## 🔍 Troubleshooting Empty Images

If images appear empty:

### 1. **Check File Paths**
```bash
# Verify images exist
ls -la /Users/sri/Downloads/umbrella-2/dist/assets/images/slide-*.jpg
```

### 2. **Check File Permissions**
```bash
# Make images readable
chmod 644 /Users/sri/Downloads/umbrella-2/dist/assets/images/*.jpg
```

### 3. **Check File Size**
```bash
# Images should be > 0 bytes
ls -lh /Users/sri/Downloads/umbrella-2/dist/assets/images/slide-*.jpg
```

### 4. **Browser Cache**
- Hard refresh: `Cmd + Shift + R` (Mac) or `Ctrl + Shift + R` (Windows)
- Clear browser cache

### 5. **Serve with Local Server**
Instead of opening HTML directly, use a local server:

```bash
# Using Python 3
cd /Users/sri/Downloads/umbrella-2/dist
python3 -m http.server 8000

# Open browser to: http://localhost:8000
```

---

## 📦 Image Optimization Tips

Before adding images:

1. **Compress Images:**
   - Use tools like TinyPNG, ImageOptim, or Squoosh
   - Target: 200-500KB per image

2. **Resize to Web Dimensions:**
   - Max width: 1920px
   - Max height: 1080px
   - Aspect ratio: 16:9 recommended

3. **Convert to WebP (Optional):**
   ```bash
   # Using cwebp (install via: brew install webp)
   cwebp -q 80 input.jpg -o output.webp
   ```

---

## 📝 Example: Replace All Slider Images

```bash
# 1. Navigate to images directory
cd /Users/sri/Downloads/umbrella-2/dist/assets/images/

# 2. Backup original images (optional)
mkdir -p backup
cp slide-*.jpg backup/

# 3. Add your images
# Place your 17 images here and name them slide-1.jpg through slide-17.jpg

# 4. Commit changes
cd /Users/sri/Downloads/umbrella-2
git add dist/assets/images/
git commit -m "Update slider images with custom photos"
git push origin main
```

---

## 🚀 Deploy Updated Images to Vercel

After replacing images:

1. **Commit to Git:**
   ```bash
   cd /Users/sri/Downloads/umbrella-2
   git add dist/assets/images/
   git commit -m "Add custom images for DVI Studios"
   git push origin main
   ```

2. **Vercel Auto-Deploy:**
   - Vercel will automatically detect the changes
   - Your images will be deployed to production
   - Images will be served via CDN for fast loading

---

## 📊 Image Inventory

**Main Slider (index.html):** 17 images  
**Light Theme (light-index.html):** 6 images  
**Video Background (video-index.html):** 3 video files  
**Blog Images:** 5 images  
**Team Photos:** 4 images  
**Avatars:** 5 images  
**Background/UI:** 3 images  

**Total Images to Replace:** ~38 image files

---

## ✅ Checklist

- [ ] Prepare 17 slider images (1920x1080 recommended)
- [ ] Optimize images for web (compress)
- [ ] Name images slide-1.jpg through slide-17.jpg
- [ ] Copy images to `dist/assets/images/`
- [ ] Test locally with a local server
- [ ] Update categories in HTML if needed
- [ ] Commit and push to GitHub
- [ ] Verify on Vercel deployment

---

Need help? The images are located at:
`/Users/sri/Downloads/umbrella-2/dist/assets/images/`

