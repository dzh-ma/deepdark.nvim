local M = {}

-- @class light colorscheme
M.light = {
    -- shades
    black = "#faf2eb",
    dark_grey = "#cccbc6",
    grey = "#999791",
    light_grey = "#595855",
    white = "#1a1918",

    -- light colors
    light_blue = "#d4d4fa",
    light_cyan = "#c8fafa",
    light_green = "#d4fad4",
    light_orange = "#fae1c8",
    light_pink = "#fad4ed",
    light_purple = "#edd4fa",
    light_red = "#fad4d4",
    light_yellow = "#fafac8",

    -- full colors
    blue = "#0000a6",
    cyan = "#00a6a6",
    green = "#00a600",
    orange = "#f27900",
    pink = "#a6006f",
    purple = "#6f00a6",
    red = "#a60000",
    yellow = "#f2f200",
}

-- @class light colorscheme
M.light = {
    -- shades
    black = "#1a1918",
    dark_grey = "#595855",
    grey = "#999791",
    light_grey = "#cccbc6",
    white = "#faf2eb",

    -- light colors
    light_blue = "#d4d4fa",
    light_cyan = "#c8fafa",
    light_green = "#d4fad4",
    light_orange = "#fae1c8",
    light_pink = "#fad4ed",
    light_purple = "#edd4fa",
    light_red = "#fad4d4",
    light_yellow = "#fafac8",

    -- full colors
    blue = "#0000a6",
    cyan = "#00a6a6",
    green = "#00a600",
    orange = "#f27900",
    pink = "#a6006f",
    purple = "#6f00a6",
    red = "#a60000",
    yellow = "#f2f200",
}

function M.setup(opts)
    opts = opts or {}
    local config = require("deepblack.config")

    local palette = M.dark

    if config.is_day() then
        palette = M.light
    end

    return palette
end

return M
