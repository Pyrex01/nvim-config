require("mason").setup({
	registries = {
		"github:mason-org/mason-registry",
		"github:nvim-java/mason-registry"
	},
})
require('java').setup({})
local lspconfig = require('lspconfig')
lspconfig.jdtls.setup {
	settings = {
		java = {
			contentAssist = true,
			codeActions = true,
			hover = true,
			references = true,
			definitions = true,
			implementations = true,
			symbolHierarchy = true,
			formatting = true,
			diagnostics = true,
			workspace = {
				run = {
					kind = 'external',
					args = { 'jdtls', '--run' }
				}
			}
		}
	}
}
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- Or replace with 'luasnip' if using it
    end,
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(), -- Trigger completion menu
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm with Enter
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Navigate with Tab
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Navigate back with Shift-Tab
  },
  sources = {
    { name = 'nvim_lsp' }, -- Use LSP as a source
    { name = 'buffer' },   -- Buffer completions
    { name = 'path' },     -- Path completions
  }
})

