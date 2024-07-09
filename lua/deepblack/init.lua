local M = {}

function M.setup()
    local colors = require("deepblack.colors.deepblack")
    local groups = require("deepblack.groups")

    local hi = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    local highlights = groups.setup(colors)

    for group, opts in pairs(highlights) do
        hi(group, opts)
    end

end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "deepblack"

    M.setup()
end

return M
