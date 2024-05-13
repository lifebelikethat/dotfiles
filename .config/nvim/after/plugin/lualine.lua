local function isRecording ()
  local reg = vim.fn.reg_recording()
  if reg == "" then return "" end -- not recording
  return "recording to " .. reg
end

require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "nightfly",
    component_separators = { left = "", right = ""},
    section_separators = { left = "", right = ""},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {
        {
            "branch",
            color = {
                -- bg = "#62628e",
                bg = "#4d536b",
                fg = "normal",
                -- gui = "bold",
            },
            section_separator = ">",
        },
    },
    lualine_c = {
        {
            "filetype",
            colored = true,
            icon_only = true,
            padding = { right = 0, left = 1 },
            separator = "",
        },
        {
            "filename",
            padding = { left = 0, right = 1 },
        },
        {
            isRecording,
        },
    },
    lualine_x = {
        {
            "tabs",
            tabs_color = {
                active = "lualine_a_normal",
                inactive = "lualine_a_inactive",
            },
        }
    },
    lualine_y = {
        {
            "progress",
            color = {fg="white", bg="darkslategray"},
        },
        {
            "location",
            color = {fg="white", bg="darkslategray"},
        }
    },
    lualine_z = {
        {
            "datetime",
            icon = {
                "",
                padding = 1,
            },
            style = "%H:%M",
            color = {gui = "", bg = "#1f1f1f", fg = "white"},
            colored = false,
        }
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

