vim.keymap.set("n", "<Esc>", function()
	require("notify").dismiss()
end, { desc = "dismiss notify popup and clear hlsearch" })

return {
	"rcarriga/nvim-notify",
	lazy = false,
	opts = {
		timeout = 1000,
		max_height = function()
			return math.floor(vim.o.lines * 0.55)
		end,
		max_width = function()
			return math.floor(vim.o.columns * 0.40)
		end,
		on_open = function(win)
			vim.api.nvim_win_set_config(win, { focusable = false })
		end,
		render = "default",
		stages = "fade_in_slide_out",
	},
}
