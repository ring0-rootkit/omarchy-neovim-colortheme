# Omarchy Theme Loader for Neovim

A lightweight Lua module that reads Omarchy theme configuration files and applies Neovim color schemes without relying on LazyVim.

**NOTE:** this plugin uses vim.pack that is available only for *neovim>=0.12*

## Installation

Install using your favourite package manager
```lua
vim.pack.add({"https://github.com/ring0-rootkit/omarchy-neovim-colortheme"})
```

## Usage

Add to your `init.lua`:

```lua
require("omarchy-neovim-colortheme").setup()
```

## How It Works

1. **Reads Configuration**: Loads the Omarchy theme file from `~/.config/omarchy/current/theme/neovim.lua`
2. **Extracts Plugin**: Identifies the theme plugin (non-LazyVim entry)
3. **Installs Plugin**: Uses `vim.pack.add()` to install the color scheme plugin
4. **Applies Theme**: Sets the colorscheme using the name specified in the configuration
