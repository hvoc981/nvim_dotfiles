return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},

	opts = {
		vim.keymap.set(
			"n",
			"<leader>b",
			":Neotree filesystem toggle reveal left<cr>",
			{ noremap = true, silent = true }
		),
		follow_current_file = true,
	},
}
