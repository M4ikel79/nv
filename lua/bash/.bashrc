#!/bin/bash
# Neovim terminal bash configuration with ble.sh

# ble.sh configuration directory
BLE_CONFIG_DIR="$HOME/.config/nvim/lua/bash"
BLERC="$BLE_CONFIG_DIR/blerc"

# Initialize ble.sh at the beginning
if [[ $- == *i* ]]; then
    source "$BLE_CONFIG_DIR/share/blesh/ble.sh" --rcfile="$BLERC" --attach=none
fi

# Source user's main bashrc if it exists
if [[ -f "$HOME/.bashrc" && "$HOME/.bashrc" != "$BASH_SOURCE" ]]; then
    source "$HOME/.bashrc"
fi

# Attach ble.sh at the end
[[ ! ${BLE_VERSION-} ]] || ble-attach
