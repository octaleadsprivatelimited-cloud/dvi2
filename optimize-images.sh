#!/bin/bash

# DVI Studios - Image Optimizer
# Optimizes images for web using ImageMagick or sips (macOS built-in)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎨 DVI Studios - Image Optimizer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

IMAGE_DIR="/Users/sri/Downloads/umbrella-2/dist/assets/images"

echo "📂 Optimizing images in: $IMAGE_DIR"
echo ""

# Count files before
echo "📊 Before optimization:"
ls -lh "$IMAGE_DIR"/slide-*.jpg | grep -E "slide-(1|2|4|5|7|8|9|14|15)\.jpg"
echo ""

# Check if sips is available (built-in on macOS)
if command -v sips &> /dev/null; then
    echo "✅ Using sips (macOS built-in tool)"
    echo "🔄 Optimizing images..."
    echo ""
    
    count=0
    for slide in slide-1.jpg slide-2.jpg slide-4.jpg slide-5.jpg slide-7.jpg slide-8.jpg slide-9.jpg slide-14.jpg slide-15.jpg; do
        if [ -f "$IMAGE_DIR/$slide" ]; then
            echo "  🎨 Optimizing $slide..."
            
            # Resize to max 1920px width and optimize quality
            sips -Z 1920 "$IMAGE_DIR/$slide" --setProperty formatOptions 75 >/dev/null 2>&1
            
            count=$((count + 1))
            echo "     ✅ $slide optimized"
        fi
    done
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "✅ Optimized $count images"
    echo ""
    echo "📊 After optimization:"
    ls -lh "$IMAGE_DIR"/slide-*.jpg | grep -E "slide-(1|2|4|5|7|8|9|14|15)\.jpg"
    echo ""
    echo "💾 File size reduced for faster web loading!"
    
else
    echo "⚠️  sips not found. Images downloaded but not optimized."
    echo "💡 They will still work, but may load slower."
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

