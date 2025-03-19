# oscura.nvim

A dark, minimal colorscheme for Neovim with subtle colors and excellent contrast.

## Features

- Dark, minimal design
- Subtle color palette
- Support for various Neovim features:
  - LSP diagnostics
  - Git signs
  - Treesitter
  - Telescope
  - NvimTree
  - And more!

## Installation

### Using lazy.nvim

```lua
{
    "thehamsti/oscura.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("oscura")
    end,
}
```

### Using packer

```lua
use {
    "thehamsti/oscura.nvim",
    config = function()
        vim.cmd.colorscheme("oscura")
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

No configuration is required! The colorscheme works out of the box. However, if you want to customize it, you can do so by setting up the colorscheme with custom options:

```lua
require("oscura").setup({
    -- Add custom options here if needed in the future
})
```

## Screenshots

[Add screenshots here]

## License

MIT License 