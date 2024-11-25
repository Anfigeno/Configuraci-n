return {
	"akinsho/toggleterm.nvim",
	version = "*",
	dependencies = {
		"ryanmsnyder/toggleterm-manager.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local colores = require("mestizo").paleta()

		require("toggleterm").setup({
			open_mapping = [[<c-k>]],
			highlights = {
				FloatBorder = {
					guibg = colores.base,
					guifg = colores.rojo,
				},
			},
			float_opts = {
				border = "curved",
			},
			start_in_insert = true,
			shade_terminals = false,
			autochdir = false,
			direction = "horizontal",
		})

		vim.keymap.set("n", "<space>fk", "<cmd>Telescope toggleterm_manager<cr>")
	end,
}
