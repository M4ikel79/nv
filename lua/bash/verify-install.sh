#!/bin/bash
# Installation verification script for ble.sh setup

echo "==================================="
echo "ble.sh Installation Verification"
echo "==================================="
echo ""

BASE_DIR="$HOME/.config/nvim/lua/bash"

# Check if directories exist
echo "Checking directories..."
if [[ -d "$BASE_DIR/ble.sh" ]]; then
    echo "✓ ble.sh repository: FOUND"
else
    echo "✗ ble.sh repository: MISSING"
fi

if [[ -d "$BASE_DIR/blesh-contrib" ]]; then
    echo "✓ blesh-contrib repository: FOUND"
else
    echo "✗ blesh-contrib repository: MISSING"
fi

if [[ -d "$BASE_DIR/share/blesh" ]]; then
    echo "✓ ble.sh installation: FOUND"
else
    echo "✗ ble.sh installation: MISSING"
fi

echo ""

# Check if configuration files exist
echo "Checking configuration files..."
if [[ -f "$BASE_DIR/.bashrc" ]]; then
    echo "✓ .bashrc: FOUND"
else
    echo "✗ .bashrc: MISSING"
fi

if [[ -f "$BASE_DIR/blerc" ]]; then
    echo "✓ blerc: FOUND"
else
    echo "✗ blerc: MISSING"
fi

if [[ -f "$BASE_DIR/README.md" ]]; then
    echo "✓ README.md: FOUND"
else
    echo "✗ README.md: MISSING"
fi

echo ""

# Check if main ble.sh script exists
echo "Checking ble.sh components..."
if [[ -f "$BASE_DIR/share/blesh/ble.sh" ]]; then
    echo "✓ Main ble.sh script: FOUND"
    
    # Try to get version
    if grep -q "BLE_VERSION=" "$BASE_DIR/share/blesh/ble.sh" 2>/dev/null; then
        version=$(grep "^BLE_VERSION=" "$BASE_DIR/share/blesh/ble.sh" | head -1 | cut -d= -f2 | tr -d "'\"")
        echo "  Version: $version"
    fi
else
    echo "✗ Main ble.sh script: MISSING"
fi

if [[ -d "$BASE_DIR/share/blesh/lib" ]]; then
    lib_count=$(ls "$BASE_DIR/share/blesh/lib" 2>/dev/null | wc -l)
    echo "✓ ble.sh libraries: FOUND ($lib_count files)"
else
    echo "✗ ble.sh libraries: MISSING"
fi

if [[ -d "$BASE_DIR/share/blesh/contrib" ]]; then
    contrib_count=$(find "$BASE_DIR/share/blesh/contrib" -type f 2>/dev/null | wc -l)
    echo "✓ ble.sh contrib modules: FOUND ($contrib_count files)"
else
    echo "✗ ble.sh contrib modules: MISSING"
fi

echo ""
echo "==================================="
echo "Summary"
echo "==================================="
echo ""
echo "Installation directory: $BASE_DIR"
echo ""
echo "To use this configuration:"
echo "1. In Neovim terminal: :terminal bash --rcfile $BASE_DIR/.bashrc"
echo "2. Or configure in init.lua:"
echo "   vim.o.shell = '/bin/bash'"
echo "   vim.o.shellcmdflag = '--rcfile $BASE_DIR/.bashrc -c'"
echo ""
echo "Documentation:"
echo "  - README.md: Usage and quick start guide"
echo "  - SETUP_SUMMARY.md: Detailed setup information"
echo "  - blerc: Main configuration file (customizable)"
echo ""
