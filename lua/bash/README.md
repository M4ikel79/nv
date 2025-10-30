# Bash Shell Configuration for Neovim

This directory contains a customized bash shell environment optimized for Neovim's integrated terminal.

## Components

### ble.sh - Bash Line Editor
A feature-rich bash completion and line editing engine that provides:
- Advanced command-line editing
- Syntax highlighting
- Auto-completion
- History search
- Custom prompts

**Repository**: https://github.com/akinomyoga/ble.sh

### Configuration Files

#### `.bashrc`
The main bash configuration file for Neovim's terminal. It:
- Initializes ble.sh with custom configuration
- Sources your main `~/.bashrc` if it exists
- Enables ble.sh features for the terminal session

#### `blerc`
Custom ble.sh configuration with:
- **Editor**: Set to `nvim`
- **Indentation**: 2 spaces (no tabs) - common for Neovim configs
- **Simple Prompt**: Clean `[dir] $` format with color-coded exit status
- **Auto-completion**: Enabled with 100ms delay
- **Syntax Highlighting**: Enabled for commands, filenames, and variables
- **History Search**: Arrow keys search through history
- **Vim Mode Support**: Cursor shapes for different vim modes

## Directory Structure

```
lua/bash/
├── .bashrc              # Main bash config for Neovim terminal
├── blerc                # ble.sh configuration
├── ble.sh/              # ble.sh source repository
├── blesh-contrib/       # Additional ble.sh plugins (not currently used)
├── share/
│   └── blesh/           # Installed ble.sh files
│       ├── ble.sh       # Main ble.sh script
│       ├── lib/         # Core libraries
│       └── contrib/     # Contrib modules (prompts, integrations, themes)
└── README.md            # This file
```

## Usage

### In Neovim
When you open a terminal in Neovim (`:terminal` or `:term`), it will automatically use this bash configuration.

To configure Neovim to use this bashrc, ensure your Neovim config has:
```lua
-- In your init.lua or terminal config
vim.o.shell = '/bin/bash'
vim.o.shellcmdflag = '--rcfile ' .. vim.fn.stdpath('config') .. '/lua/bash/.bashrc -c'
```

### Testing
You can test the configuration from the command line:
```bash
bash --rcfile ~/.config/nvim/lua/bash/.bashrc
```

## Customization

### Modifying the Prompt
Edit `blerc` and modify the `blerc_prompt_command` function to customize the prompt appearance.

### Adding More Features
You can explore the ble.sh template at `ble.sh/blerc.template` for additional options to add to `blerc`.

### Using Contrib Modules
The `blesh-contrib` repository includes:
- `contrib/prompt-git` - Git branch in prompt
- `contrib/integration/fzf-*` - FZF integration
- `contrib/scheme/*` - Color schemes
- And more...

To use them, add to your `blerc`:
```bash
ble-import contrib/prompt-git
```

## Updating ble.sh

To update ble.sh to the latest version:
```bash
cd ~/.config/nvim/lua/bash/ble.sh
git pull
make install PREFIX=~/.config/nvim/lua/bash
```

## References

- [ble.sh Documentation](https://github.com/akinomyoga/ble.sh)
- [ble.sh Wiki](https://github.com/akinomyoga/ble.sh/wiki)
- [blesh-contrib](https://github.com/akinomyoga/blesh-contrib)
