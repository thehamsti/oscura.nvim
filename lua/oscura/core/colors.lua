local M = {}

M.colors = {
    bg = "#0B0B0F",             -- Main editor background
    fg = "#E6E6E6",             -- Default text color
    line_nr = "#32333B",        -- Line number color
    active_line_nr = "#E6E6E6", -- Active line number color
    comment = "#46474F",        -- Comments
    selection = "#EAEC8A21",    -- Selection background
    yellow = "#E6E7A3",         -- Light yellow for functions, etc.
    red = "#D84F68",            -- Red for errors and deleted content
    orange = "#F9B98C",         -- Peachy color for numbers and constants
    purple = "#9592A4",         -- Muted purple
    blue = "#479FFA",           -- Bright blue for links
    gray = "#9099A1",           -- Grayish for keywords
    teal = "#54C0A3",           -- Teal for attributes
    bracket = "#5C6974",        -- Dark gray for brackets
    dark_gray = "#2C2C31",      -- For input background
    black = "#000000",          -- Pure black
    diff_add_bg = "#E6E6E615",  -- Background for added text in diffs
    diff_del_bg = "#D84F6815",  -- Background for removed text in diffs
    warning = "#FFA16C",        -- Warning color
    error = "#FF5C5C",          -- Error color
    hint = "#4EBE96",           -- Hint color
    info = "#6A7782",           -- Info color
}

return M 