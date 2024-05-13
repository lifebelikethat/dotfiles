function ColorBackground(color)
    color = color or "kanagawa-wave"

    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none"})  
    vim.api.nvim_set_hl(0, "NonText", { bg = "none"})
    vim.api.nvim_set_hl(0, "LineNR", {bg = "none", fg = "pink"})
    -- vim.api.nvim_set_hl(0, "CursorLine", {bg = "#3f3f67", fg = "none"})
    vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "lightblue"})
    vim.api.nvim_set_hl(0, "StatusLine", {bg = "none", fg = "wheat"})
    vim.api.nvim_set_hl(0, "StatusLineNC", {bg = "none", fg = "red"})
    vim.api.nvim_set_hl(0, "Comment", {fg = "lightgrey"})
    vim.api.nvim_set_hl(0, "WinSeparator", {fg = "#394959", bg = "none", bold = true})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "FloatBorder", {bg = "none"})
    vim.api.nvim_set_hl(0, "TelescopeBorder", {bg = "none", fg = "#bfbfbf"})
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", {bg = "none", fg = "lightblue"})
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", {bg = "none", fg = "lightblue"})
    vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {bg = "none"})
    vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {bg = "none"})
end

ColorBackground(color)
