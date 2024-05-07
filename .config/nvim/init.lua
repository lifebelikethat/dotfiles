require("lifebelikethat")

function reload_config()
    for name,_ in pairs(package.loaded) do
        if name:match('^user') then
            package.loaded[name] = nil
        end
    end

    require('lifebelikethat')

    -- Reload after/ directory
    local glob = vim.fn.stdpath('config') .. '/after/**/*.lua'
    local after_lua_filepaths = vim.fn.glob(glob, true, true)

    for _, filepath in ipairs(after_lua_filepaths) do
        dofile(filepath)
    end

    -- vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end

reload_config()

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argv(0) == '' then vim.cmd("silent! lua require('telescope.builtin').find_files()") end
    -- vim.cmd("silent! lua require('telescope.builtin').find_files()")
  end,
})
