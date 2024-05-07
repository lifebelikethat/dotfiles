local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
vim.keymap.set('n', '<leader>bs', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bl', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local telescope = require('telescope')
telescope.setup {
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "venv",
        },
        path_display={"truncate"},
        sorting_strategy = "ascending",
        preview = false,
        layout_config = {
            height = 0.6,
            preview_cutoff = 120,
            width = 0.6,
            prompt_position = "top",
        },
    },
    pickers = {
        buffers = {
            hidden = true,
        },
        find_files = {
            hidden = true,
        }
    },
    extensions = {
        cmdline = {
            picker = {
                prompt_prefix = ": ",
                layout_config = {
                    width = 0.6,
                    height = 0.6,
                },
            }
        },
    }
}
