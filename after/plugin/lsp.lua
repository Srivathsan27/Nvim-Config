local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set('n', "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', "<leader>rn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set('n', "<leader>rf", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set('n', "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = true}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
