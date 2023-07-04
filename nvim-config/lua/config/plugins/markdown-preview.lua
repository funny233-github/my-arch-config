return{
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
        vim.g.mkdp_browser = '/usr/bin/wyeb'
        vim.g.mkdp_theme = 'dark'
    end,
}
