return {
	dir = "~/Código/Mestizo/Mestizo.nvim",
	config = function()
		vim.cmd("colorscheme mestizo")

		require("mestizo").establecer({
			integraciones = {
				todas = true,
			},
			extras = {
				barra_minimalista = true,
			},
		})
	end,
}
