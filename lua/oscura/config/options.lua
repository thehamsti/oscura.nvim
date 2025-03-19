local M = {}

M.config = {
    -- Whether to use italic text
    italic_comments = true,
    italic_keywords = false,
    italic_functions = false,
    italic_variables = false,
    
    -- Whether to use bold text
    bold_functions = false,
    bold_keywords = false,
    bold_variables = false,
    
    -- Whether to use underline text
    underline_variables = false,
    
    -- Whether to use strikethrough text
    strikethrough_deprecated = true,
    
    -- Whether to use undercurl for diagnostics
    undercurl_diagnostics = true,
    
    -- Whether to use bold for active tab
    bold_active_tab = true,
    
    -- Whether to use italic for active parameter in signature help
    italic_signature_help = true,
    
    -- Whether to use bold for todo comments
    bold_todo = true,
    
    -- Whether to use italic for todo comments
    italic_todo = true,
}

function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

return M 