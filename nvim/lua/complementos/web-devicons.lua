return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		require("nvim-web-devicons").setup({
			override_by_filename = require("mestizo.claves.integraciones.especial.web-devicons"),
		})
	end,
}
