#!/bin/bash

# DVI Studios - Download All Missing Images
# Downloads team, portrait, nature, and blog images from Unsplash

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📸 DVI Studios - Downloading Missing Images"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

IMAGE_DIR="/Users/sri/Downloads/umbrella-2/dist/assets/images"
TEMP_DIR="/tmp/dvi-all-images"

mkdir -p "$TEMP_DIR"

echo "📂 Destination: $IMAGE_DIR"
echo "🌐 Source: Unsplash (Free for commercial use)"
echo ""

# Check curl
if ! command -v curl &> /dev/null; then
    echo "❌ Error: curl not found"
    exit 1
fi

count=0

echo "👥 Downloading Team Member Images (4)..."
echo ""

# Team member 1 - Male photographer
echo "  📥 team-member-1.jpg (Professional male photographer)..."
if curl -L -s "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=800&q=80" -o "$TEMP_DIR/team-member-1.jpg" --max-time 30 && [ -s "$TEMP_DIR/team-member-1.jpg" ]; then
    cp "$TEMP_DIR/team-member-1.jpg" "$IMAGE_DIR/team-member-1.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Team member 2 - Female photographer
echo "  📥 team-member-2.jpg (Professional female photographer)..."
if curl -L -s "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&q=80" -o "$TEMP_DIR/team-member-2.jpg" --max-time 30 && [ -s "$TEMP_DIR/team-member-2.jpg" ]; then
    cp "$TEMP_DIR/team-member-2.jpg" "$IMAGE_DIR/team-member-2.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Team member 3 - Male videographer
echo "  📥 team-member-3.jpg (Professional male videographer)..."
if curl -L -s "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=800&q=80" -o "$TEMP_DIR/team-member-3.jpg" --max-time 30 && [ -s "$TEMP_DIR/team-member-3.jpg" ]; then
    cp "$TEMP_DIR/team-member-3.jpg" "$IMAGE_DIR/team-member-3.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Team member 4 - Female team member
echo "  📥 team-member-4.jpg (Professional female team member)..."
if curl -L -s "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=800&q=80" -o "$TEMP_DIR/team-member-4.jpg" --max-time 30 && [ -s "$TEMP_DIR/team-member-4.jpg" ]; then
    cp "$TEMP_DIR/team-member-4.jpg" "$IMAGE_DIR/team-member-4.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

echo ""
echo "👤 Downloading Portrait Images (3)..."
echo ""

# Portrait 1
echo "  📥 slide-6.jpg (Portrait photography)..."
if curl -L -s "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?w=1920&q=80" -o "$TEMP_DIR/slide-6.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-6.jpg" ]; then
    cp "$TEMP_DIR/slide-6.jpg" "$IMAGE_DIR/slide-6.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Portrait 2
echo "  📥 slide-10.jpg (Professional portrait)..."
if curl -L -s "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=1920&q=80" -o "$TEMP_DIR/slide-10.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-10.jpg" ]; then
    cp "$TEMP_DIR/slide-10.jpg" "$IMAGE_DIR/slide-10.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Portrait 3 (slide-16)
echo "  📥 slide-16.jpg (Portrait photography)..."
if curl -L -s "https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=1920&q=80" -o "$TEMP_DIR/slide-16.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-16.jpg" ]; then
    cp "$TEMP_DIR/slide-16.jpg" "$IMAGE_DIR/slide-16.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

echo ""
echo "🌿 Downloading Nature Images (3)..."
echo ""

# Nature 1
echo "  📥 slide-11.jpg (Nature landscape)..."
if curl -L -s "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1920&q=80" -o "$TEMP_DIR/slide-11.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-11.jpg" ]; then
    cp "$TEMP_DIR/slide-11.jpg" "$IMAGE_DIR/slide-11.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Nature 2
echo "  📥 slide-12.jpg (Nature scenery)..."
if curl -L -s "https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?w=1920&q=80" -o "$TEMP_DIR/slide-12.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-12.jpg" ]; then
    cp "$TEMP_DIR/slide-12.jpg" "$IMAGE_DIR/slide-12.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Nature 3 (slide-3)
echo "  📥 slide-3.jpg (Nature outdoor)..."
if curl -L -s "https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=1920&q=80" -o "$TEMP_DIR/slide-3.jpg" --max-time 30 && [ -s "$TEMP_DIR/slide-3.jpg" ]; then
    cp "$TEMP_DIR/slide-3.jpg" "$IMAGE_DIR/slide-3.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

echo ""
echo "📝 Downloading Blog & UI Images (2)..."
echo ""

# Blog article image
echo "  📥 blog-article.jpg (Blog featured image)..."
if curl -L -s "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?w=1920&q=80" -o "$TEMP_DIR/blog-article.jpg" --max-time 30 && [ -s "$TEMP_DIR/blog-article.jpg" ]; then
    cp "$TEMP_DIR/blog-article.jpg" "$IMAGE_DIR/blog-article.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi
sleep 0.5

# Background menu
echo "  📥 bg-menu.jpg (Menu background)..."
if curl -L -s "https://images.unsplash.com/photo-1557683316-973673baf926?w=1920&q=80" -o "$TEMP_DIR/bg-menu.jpg" --max-time 30 && [ -s "$TEMP_DIR/bg-menu.jpg" ]; then
    cp "$TEMP_DIR/bg-menu.jpg" "$IMAGE_DIR/bg-menu.jpg"
    count=$((count + 1))
    echo "     ✅ Downloaded"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Downloaded $count images"
echo ""

if [ $count -gt 0 ]; then
    echo "📊 Downloaded files:"
    ls -lh "$IMAGE_DIR"/team-member-*.jpg "$IMAGE_DIR"/slide-*.jpg "$IMAGE_DIR"/blog-article.jpg "$IMAGE_DIR"/bg-menu.jpg 2>/dev/null | grep -E "(team-member|slide-6|slide-10|slide-11|slide-12|slide-3|slide-16|blog-article|bg-menu)" || true
    echo ""
    echo "🎨 Now optimizing images..."
    cd /Users/sri/Downloads/umbrella-2 && ./optimize-images.sh 2>/dev/null || echo "   Note: Run ./optimize-images.sh manually if needed"
    echo ""
    echo "📋 Next steps:"
    echo "  1. Refresh browser: http://localhost:8000"
    echo "  2. Check Team, Portraits, Nature categories"
    echo "  3. Commit:"
    echo "     git add dist/assets/images/"
    echo "     git commit -m 'Add downloaded team, portrait, nature and blog images'"
    echo "     git push origin main"
fi

rm -rf "$TEMP_DIR"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

