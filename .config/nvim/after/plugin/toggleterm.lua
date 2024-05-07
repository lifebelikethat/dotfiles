require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
      if term.direction == "vertical" then
          return vim.o.columns * 0.40
      elseif term.direction == "horizontal" then
          return 15
      end
  end,
  open_mapping = [[<c-\>]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  persist_size = false,
  persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
  direction = 'vertical',
  close_on_exit = false, -- close the terminal window when the process exits
  auto_scroll = true, -- automatically scroll to the bottom on terminal output
  shade_terminals = false,
  trim_spaces = true,
}
