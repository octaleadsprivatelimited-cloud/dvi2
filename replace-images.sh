#!/bin/bash

# DVI Studios - Image Replacement Script
# This script helps you replace slider images with your own

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📸 DVI Studios - Image Replacement Tool"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Set directories
PROJECT_DIR="$(dirname "$0")"
IMAGE_DIR="$PROJECT_DIR/dist/assets/images"
BACKUP_DIR="$IMAGE_DIR/backup-$(date +%Y%m%d-%H%M%S)"

# Check if source directory is provided
if [ -z "$1" ]; then
    echo "Usage: ./replace-images.sh /path/to/your/images"
    echo ""
    echo "Example:"
    echo "  ./replace-images.sh ~/Pictures/my-photos"
    echo ""
    echo "Your images should be named:"
    echo "  - slide-1.jpg, slide-2.jpg, ... slide-17.jpg"
    echo "  OR"
    echo "  - Any names (script will ask you to map them)"
    echo ""
    exit 1
fi

SOURCE_DIR="$1"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ Error: Directory not found: $SOURCE_DIR"
    exit 1
fi

echo "📂 Source directory: $SOURCE_DIR"
echo "📂 Destination: $IMAGE_DIR"
echo ""

# Create backup
echo "💾 Creating backup of original images..."
mkdir -p "$BACKUP_DIR"
cp "$IMAGE_DIR"/slide-*.jpg "$BACKUP_DIR/" 2>/dev/null
echo "✅ Backup saved to: $BACKUP_DIR"
echo ""

# Count images in source directory
IMAGE_COUNT=$(find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | wc -l | tr -d ' ')
echo "📊 Found $IMAGE_COUNT images in source directory"
echo ""

# List images
echo "📋 Images found:"
find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | head -20
echo ""

# Ask for confirmation
read -p "Copy these images to slider? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Cancelled"
    exit 0
fi

echo ""
echo "🔄 Copying images..."

# Copy images (if they're already named slide-1.jpg, etc.)
COPIED=0
for i in {1..17}; do
    if [ -f "$SOURCE_DIR/slide-$i.jpg" ]; then
        cp "$SOURCE_DIR/slide-$i.jpg" "$IMAGE_DIR/slide-$i.jpg"
        echo "  ✓ Copied slide-$i.jpg"
        ((COPIED++))
    elif [ -f "$SOURCE_DIR/slide-$i.jpeg" ]; then
        cp "$SOURCE_DIR/slide-$i.jpeg" "$IMAGE_DIR/slide-$i.jpg"
        echo "  ✓ Copied slide-$i.jpeg → slide-$i.jpg"
        ((COPIED++))
    elif [ -f "$SOURCE_DIR/slide-$i.png" ]; then
        cp "$SOURCE_DIR/slide-$i.png" "$IMAGE_DIR/slide-$i.jpg"
        echo "  ✓ Copied slide-$i.png → slide-$i.jpg"
        ((COPIED++))
    fi
done

echo ""
if [ $COPIED -gt 0 ]; then
    echo "✅ Successfully copied $COPIED images!"
    echo ""
    echo "📝 Next steps:"
    echo "  1. Run: ./start-local-server.sh"
    echo "  2. Open: http://localhost:8000"
    echo "  3. Check if images look good"
    echo "  4. Commit: git add dist/assets/images/ && git commit -m 'Update images' && git push"
else
    echo "⚠️  No images copied!"
    echo ""
    echo "💡 Tip: Rename your images to:"
    echo "   slide-1.jpg, slide-2.jpg, slide-3.jpg, etc."
    echo ""
    echo "Or manually copy them:"
    echo "   cp /path/to/your/image.jpg $IMAGE_DIR/slide-1.jpg"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

