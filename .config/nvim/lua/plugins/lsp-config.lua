--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Mohammed
-- LSP

return {
    {
        "williamboman/mason.nvim", -- LSP packet manager
        config = function()
            require("mason").setup()
        end
    }, 
    {
        "williamboman/mason-lspconfig.nvim", -- lspconfig integration
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "astro", "bashls", "cssls", "somesass_ls", "tailwindcss", "eslint", "html", "jsonls", "tsserver", "prismals", "basedpyright", "rust_analyzer",
                },
                automatic_installation = true
            })
        end
    },
    {
        "neovim/nvim-lspconfig",             -- LSP configuration
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.astro.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.basedpyright.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.somesass_ls.setup({})
            lspconfig.tailwindcss.setup({})
        end
    }
}
