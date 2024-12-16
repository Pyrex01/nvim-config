require("mason").setup()

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

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim's Lua version
      },
      diagnostics = {
        globals = { "vim" }, -- Recognize 'vim' as a global variable
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Neovim runtime files
        checkThirdParty = false, -- Avoid unnecessary prompts
      },
      telemetry = {
        enable = false, -- Disable telemetry
      },
    },
  },
})

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

