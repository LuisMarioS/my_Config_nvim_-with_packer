local exec = vim.api.nvim_exec

exec([[
  let g:tagbar_width = max([25, winwidth(0) / 5])
]], false)
