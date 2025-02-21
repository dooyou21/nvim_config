require('lspconfig').bashls.setup {}
require('lspconfig').clojure_lsp.setup {}
require('lspconfig').css_variables.setup {}
require('lspconfig').cssls.setup {}
require('lspconfig').cssmodules_ls.setup {}
require('lspconfig').eslint.setup {}
require('lspconfig').html.setup {}
require('lspconfig').lua_ls.setup {}
require('lspconfig').postgres_lsp.setup {}
require('lspconfig').pylsp.setup {}
require('lspconfig').pylyzer.setup {}
require('lspconfig').rust_analyzer.setup {}
require('lspconfig').sqls.setup {}
require('lspconfig').ts_ls.setup {}
require('lspconfig').vimls.setup {}
require('lspconfig').yamlls.setup {}

-- https://www.mitchellhanberg.com/modern-format-on-save-in-neovim/
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp", { clear = true }),
	callback = function(args)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})
