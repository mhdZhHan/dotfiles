--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- Neovim Lua Config File by Mohammed
-- MAPPINGS

-- Telescope
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions

kmap.set("n", "<leader>ff", builtin.find_files, {})
kmap.set("n", "<leader>fg", builtin.live_grep, {})
kmap.set("n", "<leader>fb", builtin.buffers, {})
kmap.set("n", "<leader>fh", builtin.help_tags, {})

-- NVIM Neo Tree
kmap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>")

-- LSP nvim-lspconfig
kmap.set("n", "K", vim.lsp.buf.hover, {})
kmap.set("n", "gd", vim.lsp.buf.definition, {})
kmap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})

-- NONE LS
kmap.set("n", '<leader>gf', vim.lsp.buf.format, {})     -- format code

-- Nvim DAP
local dap = require("dap")
kmap.set("n", '<leader>dt', dap.toggle_breakpoint, {})
kmap.set("n", '<leader>dc', dap.continue, {})
