#!/bin/bash

# DVI Studios - Fashion Image Downloader
# Downloads free wedding/fashion images from Unsplash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📸 DVI Studios - Fashion Image Downloader"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Set directories
IMAGE_DIR="/Users/sri/Downloads/umbrella-2/dist/assets/images"
TEMP_DIR="/tmp/dvi-fashion-images"

# Create temp directory
mkdir -p "$TEMP_DIR"

echo "📂 Destination: $IMAGE_DIR"
echo "🌐 Source: Unsplash (Free for commercial use)"
echo ""

# Check if curl is available
if ! command -v curl &> /dev/null; then
    echo "❌ Error: curl not found. Please install curl first."
    exit 1
fi

echo "🔄 Downloading 9 high-quality fashion/wedding images..."
echo "   (This may take a few moments)"
echo ""

# Download images one by one
count=0

# Image 1
echo "  📥 Downloading slide-1.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1519741497674-611481863552?w=1920&q=80" -o "$TEMP_DIR/slide-1.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-1.jpg" ]; then
    cp "$TEMP_DIR/slide-1.jpg" "$IMAGE_DIR/slide-1.jpg"
    count=$((count + 1))
    echo "     ✅ slide-1.jpg downloaded"
fi

# Image 2
echo "  📥 Downloading slide-2.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1606800052052-a08af7148866?w=1920&q=80" -o "$TEMP_DIR/slide-2.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-2.jpg" ]; then
    cp "$TEMP_DIR/slide-2.jpg" "$IMAGE_DIR/slide-2.jpg"
    count=$((count + 1))
    echo "     ✅ slide-2.jpg downloaded"
fi

# Image 3
echo "  📥 Downloading slide-4.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1583939003579-730e3918a45a?w=1920&q=80" -o "$TEMP_DIR/slide-4.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-4.jpg" ]; then
    cp "$TEMP_DIR/slide-4.jpg" "$IMAGE_DIR/slide-4.jpg"
    count=$((count + 1))
    echo "     ✅ slide-4.jpg downloaded"
fi

# Image 4
echo "  📥 Downloading slide-5.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1591604466107-ec97de577aff?w=1920&q=80" -o "$TEMP_DIR/slide-5.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-5.jpg" ]; then
    cp "$TEMP_DIR/slide-5.jpg" "$IMAGE_DIR/slide-5.jpg"
    count=$((count + 1))
    echo "     ✅ slide-5.jpg downloaded"
fi

# Image 5
echo "  📥 Downloading slide-7.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1465495976277-4387d4b0b4c6?w=1920&q=80" -o "$TEMP_DIR/slide-7.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-7.jpg" ]; then
    cp "$TEMP_DIR/slide-7.jpg" "$IMAGE_DIR/slide-7.jpg"
    count=$((count + 1))
    echo "     ✅ slide-7.jpg downloaded"
fi

# Image 6
echo "  📥 Downloading slide-8.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1525562723836-dca67a71d5f1?w=1920&q=80" -o "$TEMP_DIR/slide-8.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-8.jpg" ]; then
    cp "$TEMP_DIR/slide-8.jpg" "$IMAGE_DIR/slide-8.jpg"
    count=$((count + 1))
    echo "     ✅ slide-8.jpg downloaded"
fi

# Image 7
echo "  📥 Downloading slide-9.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1522673607200-164d1b6ce486?w=1920&q=80" -o "$TEMP_DIR/slide-9.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-9.jpg" ]; then
    cp "$TEMP_DIR/slide-9.jpg" "$IMAGE_DIR/slide-9.jpg"
    count=$((count + 1))
    echo "     ✅ slide-9.jpg downloaded"
fi

# Image 8
echo "  📥 Downloading slide-14.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?w=1920&q=80" -o "$TEMP_DIR/slide-14.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-14.jpg" ]; then
    cp "$TEMP_DIR/slide-14.jpg" "$IMAGE_DIR/slide-14.jpg"
    count=$((count + 1))
    echo "     ✅ slide-14.jpg downloaded"
fi

# Image 9
echo "  📥 Downloading slide-15.jpg..."
if curl -L -s "https://images.unsplash.com/photo-1511285560929-80b456fea0bc?w=1920&q=80" -o "$TEMP_DIR/slide-15.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-15.jpg" ]; then
    cp "$TEMP_DIR/slide-15.jpg" "$IMAGE_DIR/slide-15.jpg"
    count=$((count + 1))
    echo "     ✅ slide-15.jpg downloaded"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Downloaded $count out of 9 images"
echo ""

if [ $count -gt 0 ]; then
    echo "📊 Image sizes:"
    ls -lh "$IMAGE_DIR"/slide-*.jpg | grep -E "slide-(1|2|4|5|7|8|9|14|15)\.jpg"
    echo ""
    echo "📋 Next steps:"
    echo "  1. Refresh browser: http://localhost:8000"
    echo "  2. Click 'Fashion' category to see new images"
    echo "  3. Commit changes:"
    echo "     git add dist/assets/images/"
    echo "     git commit -m 'Add DVI Studios fashion/wedding images'"
    echo "     git push origin main"
    echo ""
    echo "📸 All images from Unsplash.com (free for commercial use)"
    echo "   No attribution required!"
else
    echo "⚠️  No images downloaded."
    echo ""
    echo "💡 Alternative: Download manually from:"
    echo "   https://unsplash.com/s/photos/wedding-photography"
    echo "   https://unsplash.com/s/photos/indian-wedding"
fi

# Cleanup
rm -rf "$TEMP_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
