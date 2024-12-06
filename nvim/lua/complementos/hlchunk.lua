return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local colores = require("mestizo.colores")

		require("hlchunk").setup({
			indent = { enable = false },
			line_num = { enable = false },
			blank = { enable = false },
			chunk = {
				enable = true,
				style = require("mestizo.claves.integraciones.especial.hlchunk"),
			},
		})
	end,
}
