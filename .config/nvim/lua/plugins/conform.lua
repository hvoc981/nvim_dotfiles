return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				markdown = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				java = { "google-java-format" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				python = { "isort", "black" },
				bash = { "shfmt" },
				-- Add other formatters as needed
			},
			format_on_save = {
				timeout_ms = 10000, -- Increase timeout to 2500 milliseconds
				lsp_fallback = true,
				async = false,
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format({
				timeout_ms = 2500,
				lsp_fallback = true,
				async = false,
			})
		end, { desc = "Format file or range in visual mode" })
	end,
}
