return {
    'mg979/vim-visual-multi',
    config = function()
        vim.g.VM_maps = {
            ['Add Cursor Up'] = '<C-k>',
            ['Add Cursor Down'] = '<C-j>'
        }
    end
}
