local M = {}

M._steps_win = nil
M._steps_buf = nil

M.open_steps_window = function()
	vim.cmd('vsplit')
	M._steps_win = vim.api.nvim_get_current_win()
	M._steps_buf = vim.api.nvim_create_buf(true, true)
	vim.api.nvim_win_set_buf(M._steps_win, M._steps_buf)
	vim.cmd('wincmd L')
	vim.fn.appendbufline(M._steps_buf, 0, "Hi")
	vim.api.nvim_buf_set_option(M._steps_buf, "modifiable", false)
	local result_win_width = 60
	vim.api.nvim_win_set_width(M._steps_win, result_win_width)
end

return M
