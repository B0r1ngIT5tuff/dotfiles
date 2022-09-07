local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("dave.lsp.lsp-installer")
require("dave.lsp.handlers").setup()
