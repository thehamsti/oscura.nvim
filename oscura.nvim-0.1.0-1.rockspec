package = "oscura.nvim"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/thehamsti/oscura.nvim.git",
   tag = "v0.1.0"
}
description = {
   summary = "A dark, minimal colorscheme for Neovim",
   detailed = [[
      Oscura is a dark, minimal colorscheme for Neovim with subtle colors and excellent contrast.
      It supports various Neovim features including LSP diagnostics, Git signs, Treesitter, and more.
   ]],
   homepage = "https://github.com/thehamsti/oscura.nvim",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "nvim-lua/plenary.nvim >= 0.1.0"
}
build = {
   type = "builtin",
   modules = {
      ["oscura"] = "lua/oscura/init.lua"
   }
} 