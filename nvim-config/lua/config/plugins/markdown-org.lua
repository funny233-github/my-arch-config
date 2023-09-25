return{
    "demonlord1997/markdown-org",
    ft = "markdown",
    config = function()
        vim.g.default_quick_keys = 0
        vim.g.language_path = {
            ["python"] = "~/venv/bin/python",
            ["python3"] = "~/venv/bin/python3",
            ["go"] = "go",
            ["c"] = "gcc",
            ["cpp"] = "g++",
            ["c++"] = "g++",
            ["javascript"] = "node",
            ["lua"] = "lua",
            ["java"] = "java",
        }
    end
}
