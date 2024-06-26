return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
			vim.keymap.set("n", "<C-q>", ":NeotreeClose<CR>", { silent = true })
			require("neo-tree").setup({
				event_handlers = {
					{
						event = "file_opened",
						handler = function(file_path)
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
				filesystem = {
					filtered_items = {
						visible = true,
						show_hidden_count = true,
						hide_dotfiles = false,
						hide_gitignored = true,
						hide_by_name = {
							-- '.git',
							-- '.DS_Store',
							-- 'thumbs.db',
						},
						never_show = {},
					},
				},
			})
		end,
	},
}
