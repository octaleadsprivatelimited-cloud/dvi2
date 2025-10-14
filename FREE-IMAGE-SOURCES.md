# Free Fashion & Photography Images for DVI Studios

## 🖼️ Best Free Stock Photo Websites

### **1. Unsplash** (Recommended)
- **URL**: https://unsplash.com
- **License**: Free for commercial use
- **Categories**: 
  - https://unsplash.com/s/photos/wedding
  - https://unsplash.com/s/photos/fashion
  - https://unsplash.com/s/photos/portrait
  - https://unsplash.com/s/photos/birthday-party
  - https://unsplash.com/s/photos/corporate-event

### **2. Pexels**
- **URL**: https://www.pexels.com
- **License**: Free for commercial use
- **Categories**:
  - https://www.pexels.com/search/wedding/
  - https://www.pexels.com/search/fashion/
  - https://www.pexels.com/search/portrait/
  - https://www.pexels.com/search/event/

### **3. Pixabay**
- **URL**: https://pixabay.com
- **License**: Free for commercial use
- **Categories**:
  - https://pixabay.com/images/search/wedding/
  - https://pixabay.com/images/search/fashion/
  - https://pixabay.com/images/search/portrait/

### **4. Burst by Shopify**
- **URL**: https://www.shopify.com/stock-photos
- **License**: Free for commercial use
- **Great for**: Fashion, lifestyle, products

### **5. Freepik** (Some free, some premium)
- **URL**: https://www.freepik.com
- **License**: Free with attribution (or premium)
- **Great for**: High-quality fashion photos

---

## 📥 How to Download & Add Images

### **Step 1: Download Images**

1. Go to **Unsplash.com** or **Pexels.com**
2. Search for:
   - "wedding photography"
   - "fashion photoshoot"
   - "portrait photography"
   - "corporate event"
   - "birthday celebration"
3. Click on an image you like
4. Click **"Download"** button (choose Large or Original size)
5. Images will be saved to your Downloads folder

### **Step 2: Rename Images**

Rename downloaded images to match the slider naming:
- `slide-1.jpg` → Fashion category
- `slide-2.jpg` → Fashion category
- `slide-4.jpg` → Fashion category
- etc.

Or keep your names and update the HTML.

### **Step 3: Copy to Project**

```bash
# Navigate to your downloads
cd ~/Downloads

# Copy images to project
cp your-image-1.jpg /Users/sri/Downloads/umbrella-2/dist/assets/images/slide-1.jpg
cp your-image-2.jpg /Users/sri/Downloads/umbrella-2/dist/assets/images/slide-2.jpg
cp your-image-3.jpg /Users/sri/Downloads/umbrella-2/dist/assets/images/slide-4.jpg
# ... repeat for all fashion slides
```

---

## 🎨 Fashion Category Slides to Replace

Currently in `index.html`, Fashion category has these slides:
1. slide-1.jpg (line 88-90)
2. slide-2.jpg (line 91-93)
3. slide-4.jpg (line 97-99)
4. slide-5.jpg (line 100-102)
5. slide-7.jpg (line 106-108)
6. slide-8.jpg (line 109-111)
7. slide-9.jpg (line 112-114)
8. slide-14.jpg (line 127-129)
9. slide-15.jpg (line 130-132)

**Total: 9 Fashion images to replace**

---

## 🔍 Recommended Search Terms

For DVI Studios photography business, search for:

### **Wedding Photography:**
- "indian wedding ceremony"
- "wedding couple photography"
- "bridal photoshoot"
- "wedding reception"
- "engagement photography"

### **Fashion/Portrait:**
- "fashion portrait"
- "model photoshoot"
- "professional portrait"
- "studio photography"

### **Events:**
- "birthday party celebration"
- "corporate conference"
- "business event"
- "anniversary celebration"

---

## 📊 Image Requirements

### **Recommended Specifications:**
- **Size**: 1920x1080px or larger (16:9 ratio)
- **Format**: JPG (recommended) or PNG
- **Orientation**: Landscape (horizontal)
- **File Size**: 200KB - 1MB (optimize for web)

### **Best Practices:**
- High resolution for slider backgrounds
- Professional-looking images
- Consistent color tone across images
- Images that represent your services

---

## 🚀 Quick Download Guide

### **Example: Download 9 Fashion Images from Unsplash**

1. **Open these links in new tabs:**
   - https://unsplash.com/s/photos/fashion-photoshoot
   - https://unsplash.com/s/photos/wedding-photography
   - https://unsplash.com/s/photos/professional-portrait

2. **Download 9 images** you like

3. **Rename them:**
   ```bash
   cd ~/Downloads
   mv downloaded-image-1.jpg slide-1.jpg
   mv downloaded-image-2.jpg slide-2.jpg
   mv downloaded-image-3.jpg slide-4.jpg
   # ... continue
   ```

4. **Copy to project:**
   ```bash
   cp slide-*.jpg /Users/sri/Downloads/umbrella-2/dist/assets/images/
   ```

5. **Commit changes:**
   ```bash
   cd /Users/sri/Downloads/umbrella-2
   git add dist/assets/images/
   git commit -m "Update Fashion category with new photography images"
   git push origin main
   ```

---

## 🎯 Alternative: Use Automation Script

Create `download-images.sh`:

```bash
#!/bin/bash

echo "📸 Image Download Guide"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Visit these sites to download free images:"
echo ""
echo "1. Unsplash: https://unsplash.com/s/photos/wedding-photography"
echo "2. Pexels: https://www.pexels.com/search/fashion/"
echo "3. Pixabay: https://pixabay.com/images/search/portrait/"
echo ""
echo "After downloading, place images in:"
echo "  /Users/sri/Downloads/umbrella-2/dist/assets/images/"
echo ""
echo "Name them: slide-1.jpg, slide-2.jpg, etc."
echo ""
```

---

## 📝 Fashion Category Current Images

Location: `/Users/sri/Downloads/umbrella-2/dist/assets/images/`

Files to replace:
- slide-1.jpg
- slide-2.jpg
- slide-4.jpg
- slide-5.jpg
- slide-7.jpg
- slide-8.jpg
- slide-9.jpg
- slide-14.jpg
- slide-15.jpg

---

## ✅ After Adding New Images

1. Refresh localhost: http://localhost:8000
2. Click "Fashion" category to see new images
3. Commit changes:
   ```bash
   cd /Users/sri/Downloads/umbrella-2
   git add dist/assets/images/
   git commit -m "Add new fashion photography images"
   git push origin main
   ```

---

## 💡 Pro Tips

- **Optimize images** before adding (use TinyPNG.com or ImageOptim)
- **Consistent theme** - choose images with similar colors/style
- **High quality** - download largest size available
- **Legal** - only use from sites listed above (all free for commercial use)

---

## 🆘 Need Help?

After you download images, let me know and I can:
- Help you rename them
- Update the HTML if needed
- Optimize file sizes
- Commit and push changes

**Start here**: https://unsplash.com/s/photos/wedding-photography

