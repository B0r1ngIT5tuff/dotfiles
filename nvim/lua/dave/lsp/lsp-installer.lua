local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("dave.lsp.handlers").on_attach,
		capabilities = require("dave.lsp.handlers").capabilities,
	}

	 if server.name == "jsonls" then
	 	local jsonls_opts = require("dave.lsp.settings.jsonls")
	 	opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
	 end

	 if server.name == "sumneko_lua" then
	 	local sumneko_opts = require("dave.lsp.settings.sumneko_lua")
	 	opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	 end

	 if server.name == "pyright" then
	 	local pyright_opts = require("dave.lsp.settings.pyright")
	 	opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	 end

   if server.name == "gopls" then
	 	local gopls_opts = require("dave.lsp.settings.gopls")
	 	opts = vim.tbl_deep_extend("force", gopls_opts, opts)
	 end

   if server.name == "marksman" then
	 	local marksman_opts = require("dave.lsp.settings.marksman")
	 	opts = vim.tbl_deep_extend("force", marksman_opts, opts)
	 end

  if server.name == "rust-analyzer" then
	 	local rustanalyzer_opt = require("dave.lsp.settings.rust-analyzer")
	 	opts = vim.tbl_deep_extend("force", rustanalyzer_opt, opts)
	 end


	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
