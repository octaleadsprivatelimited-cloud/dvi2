#!/bin/bash

# DVI Studios - Local Development Server
# This script starts a local server to view your website with all images loading properly

echo "🚀 Starting DVI Studios Local Server..."
echo ""

# Navigate to dist directory
cd "$(dirname "$0")/dist"

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "✅ Using Python 3"
    echo "📂 Serving from: $(pwd)"
    echo "🌐 Open browser to: http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    # Start Python HTTP server
    python3 -m http.server 8000
    
elif command -v python &> /dev/null; then
    echo "✅ Using Python 2"
    echo "📂 Serving from: $(pwd)"
    echo "🌐 Open browser to: http://localhost:8000"
    echo ""
    echo "Press Ctrl+C to stop the server"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    # Start Python 2 HTTP server
    python -m SimpleHTTPServer 8000
    
else
    echo "❌ Error: Python not found!"
    echo "Please install Python to run the local server."
    exit 1
fi

