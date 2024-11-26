vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.showcmd = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.shell = "fish"

vim.diagnostic.config({
	virtual_text = {
		source = true,
	},
	float = {
		source = "always",
	},
})

vim.api.nvim_create_user_command("Hints", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, {})

vim.keymap.set("n", "<c-s>", "<cmd>Neoformat<cr><cmd>w<cr>")
