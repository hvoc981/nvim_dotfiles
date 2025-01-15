return {
	"stevearc/dressing.nvim",
	opts = {},
	config = function()
		require("dressing").setup({
			input = {
				win_options = {
					winhighlight = "NormalFloat:DiagnosticError",
				},
			},
		})
	end,
}
