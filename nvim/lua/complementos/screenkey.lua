return {
	"NStefan002/screenkey.nvim",
	lazy = false,
	version = "*",
	config = function()
		local ventana = {
			ancho = 40,
			alto = 1,
		}

		require("screenkey").setup({
			win_opts = {
				row = vim.o.lines - vim.o.cmdheight - 1,
				col = (vim.o.columns - 1) / 2 + (ventana.ancho / 2),
				relative = "editor",
				anchor = "NE",
				width = ventana.ancho,
				height = ventana.alto,
				border = "single",
				title = "Teclas",
				title_pos = "center",
				style = "minimal",
				focusable = false,
				noautocmd = true,
			},
		})
	end,
}
