return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local colores = require("mestizo").paleta()

		require("hlchunk").setup({
			indent = { enable = false },
			line_num = { enable = false },
			blank = { enable = false },
			chunk = {
				enable = true,
				style = {
					{ fg = colores.humo },
					{ fg = colores.rojo },
				},
			},
		})
	end,
}
