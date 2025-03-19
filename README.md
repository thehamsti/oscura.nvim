# Oscura.nvim

A dark theme for Neovim that focuses on readability and aesthetics.

## Features

- Clean and modern design
- Support for LSP diagnostics
- Support for Treesitter
- Support for popular plugins (Telescope, NvimTree, etc.)
- Git integration
- Configurable options

## Requirements

- Neovim >= 0.7.0

## Installation

### Using lazy.nvim

```lua
{
    "thehamsti/oscura.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("oscura").setup({
            -- Optional configuration
            italic_comments = true,
            italic_keywords = false,
            italic_functions = false,
            italic_variables = false,
            bold_functions = false,
            bold_keywords = false,
            bold_variables = false,
            underline_variables = false,
            strikethrough_deprecated = true,
            undercurl_diagnostics = true,
            bold_active_tab = true,
            italic_signature_help = true,
            bold_todo = true,
            italic_todo = true,
        })
    end,
}
```

### Using packer

```lua
use {
    "thehamsti/oscura.nvim",
    config = function()
        require("oscura").setup({
            -- Optional configuration
        })
    end,
}
```

### Using vim-plug

```vim
Plug 'hamsti/oscura.nvim'
```

Then in your init.vim or init.lua:
```lua
vim.cmd.colorscheme("oscura")
```

## Configuration

The theme can be configured with the following options:

- `italic_comments`: Whether to use italic for comments (default: true)
- `italic_keywords`: Whether to use italic for keywords (default: false)
- `italic_functions`: Whether to use italic for functions (default: false)
- `italic_variables`: Whether to use italic for variables (default: false)
- `bold_functions`: Whether to use bold for functions (default: false)
- `bold_keywords`: Whether to use bold for keywords (default: false)
- `bold_variables`: Whether to use bold for variables (default: false)
- `underline_variables`: Whether to use underline for variables (default: false)
- `strikethrough_deprecated`: Whether to use strikethrough for deprecated items (default: true)
- `undercurl_diagnostics`: Whether to use undercurl for diagnostics (default: true)
- `bold_active_tab`: Whether to use bold for active tab (default: true)
- `italic_signature_help`: Whether to use italic for active parameter in signature help (default: true)
- `bold_todo`: Whether to use bold for todo comments (default: true)
- `italic_todo`: Whether to use italic for todo comments (default: true)

## Screenshots

[Add screenshots here]

## License

MIT 