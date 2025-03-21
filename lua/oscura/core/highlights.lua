local M = {}
local colors = require("oscura.core.colors").colors

local function set_hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
    -- Reset all highlights
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    
    -- Set colorscheme name and background
    vim.g.colors_name = "oscura"
    vim.opt.background = "dark"
    
    -- -------------------------------------------------
    -- 1. Basic Editor Colors
    -- -------------------------------------------------
    set_hl("Normal", { fg = colors.fg, bg = colors.bg })
    set_hl("NormalFloat", { fg = colors.fg, bg = colors.bg })
    set_hl("LineNr", { fg = colors.line_nr })
    set_hl("CursorLineNr", { fg = colors.active_line_nr })
    set_hl("CursorLine", { bg = colors.bg })
    set_hl("Cursor", { fg = colors.bg, bg = colors.fg })
    set_hl("CursorIM", { fg = colors.bg, bg = colors.fg })
    set_hl("TermCursor", { fg = colors.bg, bg = colors.fg })
    set_hl("TermCursorNC", { fg = colors.bg, bg = colors.fg })
    set_hl("ColorColumn", { bg = colors.dark_gray })
    set_hl("SignColumn", { bg = colors.bg })
    set_hl("Conceal", { fg = colors.gray })
    set_hl("NonText", { fg = colors.line_nr })
    set_hl("SpecialKey", { fg = colors.line_nr })
    set_hl("Visual", { bg = colors.selection })
    set_hl("VisualNOS", { bg = colors.selection })
    set_hl("Search", { bg = colors.selection_highlight, fg = colors.fg })
    set_hl("IncSearch", { bg = colors.selection_highlight, fg = colors.fg })
    set_hl("CurSearch", { bg = colors.selection_highlight, fg = colors.fg })
    set_hl("EndOfBuffer", { fg = colors.line_nr })
    set_hl("Whitespace", { fg = colors.line_nr })
    set_hl("VertSplit", { fg = colors.line_nr, bg = colors.bg })
    set_hl("WinSeparator", { fg = colors.line_nr, bg = colors.bg })
    set_hl("Folded", { fg = colors.purple, bg = colors.dark_gray })
    set_hl("FoldColumn", { fg = colors.line_nr, bg = colors.bg })
    
    -- -------------------------------------------------
    -- 2. UI Elements
    -- -------------------------------------------------
    -- Status Line
    set_hl("StatusLine", { fg = colors.fg, bg = colors.bg })
    set_hl("StatusLineNC", { fg = colors.purple, bg = colors.bg })
    
    -- Tabs
    set_hl("TabLine", { fg = colors.purple, bg = colors.bg })
    set_hl("TabLineFill", { fg = colors.line_nr, bg = colors.bg })
    set_hl("TabLineSel", { fg = colors.fg, bg = colors.bg, bold = true })
    
    -- Popup Menu
    set_hl("Pmenu", { fg = colors.fg, bg = colors.dark_gray })
    set_hl("PmenuSel", { fg = colors.black, bg = colors.yellow })
    set_hl("PmenuSbar", { bg = colors.dark_gray })
    set_hl("PmenuThumb", { bg = colors.line_nr })
    
    -- Messages
    set_hl("Error", { fg = colors.red })
    set_hl("ErrorMsg", { fg = colors.red })
    set_hl("WarningMsg", { fg = colors.warning })
    set_hl("MoreMsg", { fg = colors.yellow })
    set_hl("Question", { fg = colors.yellow })
    set_hl("Directory", { fg = colors.yellow })
    set_hl("Title", { fg = colors.yellow, bold = true })
    
    -- Floats and Windows
    set_hl("FloatBorder", { fg = colors.line_nr, bg = colors.bg })
    set_hl("WinBar", { fg = colors.fg, bg = colors.bg })
    set_hl("WinBarNC", { fg = colors.gray, bg = colors.bg })
    
    -- Others
    set_hl("MatchParen", { bg = colors.selection_highlight })
    
    -- -------------------------------------------------
    -- 3. Syntax Highlighting
    -- -------------------------------------------------
    -- Basic Syntax
    set_hl("Comment", { fg = colors.comment, italic = true })
    set_hl("Constant", { fg = colors.orange })
    set_hl("String", { fg = colors.fg })
    set_hl("Character", { fg = colors.fg })
    set_hl("Number", { fg = colors.orange })
    set_hl("Boolean", { fg = colors.orange })
    set_hl("Float", { fg = colors.orange })
    
    set_hl("Identifier", { fg = colors.fg })
    set_hl("Function", { fg = colors.yellow })
    
    set_hl("Statement", { fg = colors.gray })
    set_hl("Conditional", { fg = colors.gray })
    set_hl("Repeat", { fg = colors.gray })
    set_hl("Label", { fg = colors.gray })
    set_hl("Operator", { fg = colors.gray })
    set_hl("Keyword", { fg = colors.gray })
    set_hl("Exception", { fg = colors.gray })
    
    set_hl("PreProc", { fg = colors.gray })
    set_hl("Include", { fg = colors.gray })
    set_hl("Define", { fg = colors.gray })
    set_hl("Macro", { fg = colors.gray })
    set_hl("PreCondit", { fg = colors.gray })
    
    set_hl("Type", { fg = colors.yellow })
    set_hl("StorageClass", { fg = colors.gray })
    set_hl("Structure", { fg = colors.gray })
    set_hl("Typedef", { fg = colors.gray })
    
    set_hl("Special", { fg = colors.purple })
    set_hl("SpecialChar", { fg = colors.purple })
    set_hl("Tag", { fg = colors.yellow })
    set_hl("Delimiter", { fg = colors.bracket })
    set_hl("SpecialComment", { fg = colors.comment, italic = true })
    set_hl("Debug", { fg = colors.red })
    
    set_hl("Underlined", { underline = true })
    set_hl("Ignore", { fg = colors.line_nr })
    set_hl("Error", { fg = colors.red })
    set_hl("Todo", { fg = colors.yellow, italic = true, bold = true })
    
    -- Language specific
    -- HTML/XML Tags
    set_hl("htmlTag", { fg = colors.bracket })
    set_hl("htmlEndTag", { fg = colors.bracket })
    set_hl("htmlTagName", { fg = colors.yellow })
    set_hl("htmlArg", { fg = colors.teal })
    
    -- JavaScript/TypeScript
    set_hl("jsThis", { fg = colors.purple })
    set_hl("jsClassKeyword", { fg = colors.gray })
    set_hl("jsClassMethodType", { fg = colors.gray })
    
    -- CSS
    set_hl("cssClassName", { fg = colors.yellow })
    set_hl("cssClassNameDot", { fg = colors.yellow })
    set_hl("cssTagName", { fg = colors.yellow })
    set_hl("cssProp", { fg = colors.fg })
    
    -- Python
    set_hl("pythonBuiltinFunc", { fg = colors.yellow, bold = true })
    set_hl("pythonBuiltinType", { fg = colors.yellow, bold = true })
    set_hl("pythonSelf", { fg = colors.purple })
    set_hl("pythonString", { fg = colors.orange })
    
    -- -------------------------------------------------
    -- 4. Git Signs and Diff Colors
    -- -------------------------------------------------
    set_hl("DiffAdd", { bg = colors.diff_add_bg })
    set_hl("DiffChange", { bg = colors.diff_add_bg })
    set_hl("DiffDelete", { bg = colors.diff_del_bg })
    set_hl("DiffText", { bg = colors.diff_add_bg, underline = true })
    
    -- Git Signs
    set_hl("GitSignsAdd", { fg = colors.fg })
    set_hl("GitSignsChange", { fg = colors.yellow })
    set_hl("GitSignsDelete", { fg = colors.red })
    
    -- Git Gutter
    set_hl("GitGutterAdd", { fg = colors.fg })
    set_hl("GitGutterChange", { fg = colors.yellow })
    set_hl("GitGutterDelete", { fg = colors.red })
    
    -- -------------------------------------------------
    -- 5. LSP and Diagnostics
    -- -------------------------------------------------
    set_hl("DiagnosticError", { fg = colors.error })
    set_hl("DiagnosticWarn", { fg = colors.warning })
    set_hl("DiagnosticInfo", { fg = colors.info })
    set_hl("DiagnosticHint", { fg = colors.hint })
    
    set_hl("DiagnosticVirtualTextError", { fg = colors.error, bg = colors.bg })
    set_hl("DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.bg })
    set_hl("DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg })
    set_hl("DiagnosticVirtualTextHint", { fg = colors.hint, bg = colors.bg })
    
    set_hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
    set_hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
    set_hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
    set_hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.hint })
    
    set_hl("LspReferenceText", { bg = colors.selection_highlight })
    set_hl("LspReferenceRead", { bg = colors.selection_highlight })
    set_hl("LspReferenceWrite", { bg = colors.selection_highlight })
    
    set_hl("LspSignatureActiveParameter", { fg = colors.yellow, italic = true })
    set_hl("LspCodeLens", { fg = colors.comment })
    set_hl("LspCodeLensSeparator", { fg = colors.line_nr })
    
    -- Nvim-Cmp
    set_hl("CmpItemAbbr", { fg = colors.fg })
    set_hl("CmpItemAbbrDeprecated", { fg = colors.line_nr, strikethrough = true })
    set_hl("CmpItemAbbrMatch", { fg = colors.yellow })
    set_hl("CmpItemAbbrMatchFuzzy", { fg = colors.yellow })
    set_hl("CmpItemKind", { fg = colors.purple })
    set_hl("CmpItemMenu", { fg = colors.comment })
    
    -- -------------------------------------------------
    -- 6. Miscellaneous
    -- -------------------------------------------------
    -- Telescope
    set_hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
    set_hl("TelescopeBorder", { fg = colors.line_nr, bg = colors.bg })
    set_hl("TelescopePromptBorder", { fg = colors.line_nr, bg = colors.bg })
    set_hl("TelescopeResultsBorder", { fg = colors.line_nr, bg = colors.bg })
    set_hl("TelescopePreviewBorder", { fg = colors.line_nr, bg = colors.bg })
    set_hl("TelescopeSelection", { bg = colors.dark_gray })
    set_hl("TelescopeSelectionCaret", { fg = colors.yellow })
    
    -- NvimTree
    set_hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
    set_hl("NvimTreeFolderName", { fg = colors.fg })
    set_hl("NvimTreeFolderIcon", { fg = colors.yellow })
    set_hl("NvimTreeOpenedFolderName", { fg = colors.yellow })
    set_hl("NvimTreeEmptyFolderName", { fg = colors.comment })
    set_hl("NvimTreeFilename", { fg = colors.fg })
    set_hl("NvimTreeSpecialFile", { fg = colors.purple })
    set_hl("NvimTreeGitDirty", { fg = colors.yellow })
    set_hl("NvimTreeGitNew", { fg = colors.fg })
    
    -- Bracket pairs
    set_hl("BracketMatch", { fg = colors.bracket_1 })
    set_hl("BracketMatch2", { fg = colors.bracket_2 })
    set_hl("BracketMatch3", { fg = colors.bracket_3 })
    set_hl("BracketMatch4", { fg = colors.bracket_4 })
    set_hl("BracketMatch5", { fg = colors.bracket_5 })
    set_hl("BracketMatch6", { fg = colors.bracket_6 })
    set_hl("BracketMatchUnexpected", { fg = colors.bracket_unexpected })
end

return M 