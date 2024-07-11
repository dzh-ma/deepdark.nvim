local M = {}

local function highlight(group, styles)
    local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
    vim.api.nvim_command('highlight! '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local b0 = "#1e2127"
local b1 = "#595855"
local b2 = "#807E79"
local b3 = "#999791"
local b4 = "#B3B1AD"
local b5 = "#cccbc6"
local b6 = "#E6E4DF"
local b7 = "#faf2eb"
local light_blue = "#4169E1"
local light_cyan = "#c8fafa"
local light_green = "#338864"
local light_orange = "#fae1c8"
local light_pink = "#fad4ed"
local light_purple = "#edd4fa"
local light_red = "#fad4d4"
local light_yellow = "#fafac8"
local blue = "#0000a6"
local cyan = "#00a6a6"
local green = "#00a600"
local orange = "#f27900"
local pink = "#a6006f"
local purple = "#6f00a6"
local red = "#a60000"
local yellow = "#f2f200"

local editor_syntax = {
    -- group 1
    Normal = { fg = b7, bg = b0 },
    NormalFloat = { fg = b7, bg = b0 },
    NonText = { fg = b3 },

    Cursor = { fg = b7, bg = b0 },
    CursorLine = { fg = b0, bg = b7 },
    CursorColumn = { bg = b6 },
    ColorColumn = { bg = light_yellow },
    LineNr = { fg = b3 },
    -- CursorLineNr = { fg = b7, bg = b0 },

    -- VertSplit = { fg = light_grey },
    -- Folded = { fg = grey, bg = light_grey },
    FoldColumn = { fg = b5 },
    SignColumn = { fg = b5 },

    StatusLine = { fg = b7, bg = b1 },
    StatusLineNC = { fg = b7, bg = b0 },

    TabLine = { fg = b7, bg = b0 },
    -- TabLineFill = { fg = grey, bg = light_grey },
    -- TabLineSel = { fg = black, bg = white },

    MatchParen = { fg = red, gui = "italic" },
    Visual = { bg = b2 },

    Search = { fg = b7, bg = light_yellow },
    IncSearch = { fg = b7, bg = light_yellow },
    CurSearch = { fg = b7, bg = light_yellow },

    Pmenu = { fg = b7, bg = b0 },
    PmenuSel = { fg = b7, bg = b0 },
    PmenuSbar = { bg = b7 },
    PmenuThumb = { bg = b7 },

    WildMenu = { bg = b4 },
    Question = { fg = b7, gui = "bold" },

    WarningMsg = { fg = b0, bg = orange },
    ErrorMsg = { fg = b0, bg = red },

    SpecialKey = { fg = blue },
    Title = { fg = b7, gui = "bold" },
    Directory = { fg = light_blue },
}

local code_syntax = {
    Comment = { fg = b2, gui = "italic" },
    Constant = { fg = cyan },
    String = { fg = b7, bg = light_green },
    Character = { fg = cyan },
    Number = { fg = cyan },
    Boolean = { fg = cyan },
    Float = { fg = cyan },
    Identifier = { fg = b7 },
    Function = { fg = b7 },
    Statement = { fg = b0, bg = orange },
    Conditional = { fg = b0, bg = orange },
    Repeat = { fg = b0, bg = orange },
    Label = { fg = b0, bg = orange },
    Operator = { fg = b7 },
    Keyword = { fg = b0, bg = orange },
    Exception = { fg = b0, bg = orange },
    PreProc = { fg = b7, gui = "bold" },
    Include = { fg = b0, gui = "bold" },
    Define = { fg = b0, gui = "bold" },
    Macro = { fg = b0, gui = "bold" },
    PreCondit = { fg = b0, gui = "bold" },
    Type = { fg = pink },
    StorageClass = { fg = pink },
    Structure = { fg = pink },
    Typedef = { fg = pink },
    Special = { fg = blue },
    SpecialChar = { fg = blue },
    Tag = { fg = blue },
    Delimiter = { fg = cyan },
    SpecialComment = { fg = blue },
    Debug = { fg = blue },
    Underlined = { gui = "underline" },
    Ignore = { fg = b1 },
    Error = { fg = b0, bg = red },
    Todo = { fg = green },
}

local plugin_syntax = {
    -- TreeSitter
    ["@variable"] = { fg = b4 },
    ["@function"] = { fg = b7 },
    ["@function.builtin"] = { fg = cyan },
    ["@function.call"] = { fg = cyan },
    ["@function.macro"] = { fg = b7, gui = "bold" },
    ["@keyword"] = { fg = orange },
    ["@keyword.function"] = { fg = b0, bg = purple },
    ["@keyword.operator"] = { fg = b7 },
    ["@keyword.return"] = { fg = orange },
    ["@conditional"] = { fg = b0, bg = orange },
    ["@repeat"] = { fg = b0, bg = orange },
    ["@label"] = { fg = b0, bg = orange },
    ["@operator"] = { fg = b7 },
    ["@exception"] = { fg = b0, bg = orange },
    ["@constant"] = { fg = b0, bg = blue },
    ["@constant.builtin"] = { fg = pink },
    ["@constant.macro"] = { fg = b7, gui = "bold" },
    ["@string"] = { fg = b6, bg = light_green },
    ["@string.escape"] = { fg = red },
    ["@character"] = { fg = cyan },
    ["@number"] = { fg = cyan },
    ["@boolean"] = { fg = cyan },
    ["@float"] = { fg = cyan },
    ["@type"] = { fg = pink },
    ["@type.builtin"] = { fg = pink },
    ["@attribute"] = { fg = b7, gui = "bold" },
    -- ["@field"] = { fg = blue },
    ["@property"] = { fg = b7 },
    -- ["@parameter"] = { fg = orange },

    -- Diagnostic
    DiagnosticError = { fg = red },
    DiagnosticWarn = { fg = orange },
    DiagnosticInfo = { fg = blue },
    DiagnosticHint = { fg = b6 },
    DiagnosticOk = { fg = green },
    DiagnosticUnderlineError = { sp = red, gui = "undercurl" },
    DiagnosticUnderlineWarn = { sp = orange, gui = "undercurl" },
    DiagnosticUnderlineInfo = { sp = blue, gui = "undercurl" },
    DiagnosticUnderlineHint = { sp = cyan, gui = "undercurl" },
    DiagnosticUnderlineOk = { sp = green, gui = "undercurl" },

    -- Gitsigns
    GitSignsAdd = { fg = b7 },
    GitSignsChange = { fg = b7 },
    GitSignsDelete = { fg = b7 },
    GitSignsTopdelete = { fg = b7 },
    GitSignsChangedelete = { fg = b7 },
    GitSignsUntracked = { fg = b7 },

    -- Telescope
    -- TelescopeSelection = { fg = black, bg = light_blue },
    -- TelescopeMatching = { fg = yellow, gui = "bold" },
    -- TelescopeBorder = { fg = blue },

    -- NvimTree
    -- NvimTreeNormal = { fg = black, bg = light_grey },
    -- NvimTreeFolderIcon = { fg = blue },
    -- NvimTreeFolderName = { fg = blue },
    -- NvimTreeOpenedFolderName = { fg = blue, gui = "bold" },
    -- NvimTreeEmptyFolderName = { fg = grey },
    -- NvimTreeFileIcon = { fg = cyan },
    -- NvimTreeFileName = { fg = black },
    -- NvimTreeSpecialFile = { fg = purple, gui = "underline" },

    -- Lualine
    -- LualineNormal = { fg = white, bg = blue },
    -- LualineInsert = { fg = black, bg = green },
    -- LualineVisual = { fg = black, bg = purple },
    -- LualineReplace = { fg = black, bg = red },
    -- LualineCommand = { fg = black, bg = yellow },

    -- BufferLine
    -- BufferLineFill = { bg = light_grey },
    -- BufferLineBackground = { fg = grey, bg = light_grey },
    -- BufferLineBufferSelected = { fg = black, bg = white, gui = "bold" },
    -- BufferLineModified = { fg = green },
    -- BufferLineModifiedSelected = { fg = green, gui = "bold" },

    -- LSP Saga
    -- LspSagaFinderSelection = { fg = black, bg = light_blue },
    -- LspSagaBorderTitle = { fg = purple, gui = "bold" },
    -- LspSagaCodeActionTitle = { fg = blue, gui = "bold" },
    -- LspSagaCodeActionContent = { fg = purple },

    -- Neogit
    -- NeogitBranch = { fg = purple },
    -- NeogitRemote = { fg = pink },
    -- NeogitHunkHeader = { fg = blue, bg = light_blue },
    -- NeogitHunkHeaderHighlight = { fg = blue, bg = light_blue, gui = "bold" },
    -- NeogitDiffContextHighlight = { bg = light_grey },
    -- NeogitDiffDeleteHighlight = { fg = red, bg = light_red },
    -- NeogitDiffAddHighlight = { fg = green, bg = light_green },
}

function M.setup()
    for group, styles in pairs(editor_syntax) do
        highlight(group, styles)
    end

    for group, styles in pairs(code_syntax) do
        highlight(group, styles)
    end

    for group, styles in pairs(plugin_syntax) do
        highlight(group, styles)
    end

    vim.api.nvim_set_var('terminal_color_0', b7)
    vim.api.nvim_set_var('terminal_color_1', red)
    vim.api.nvim_set_var('terminal_color_2', green)
    vim.api.nvim_set_var('terminal_color_3', yellow)
    vim.api.nvim_set_var('terminal_color_4', blue)
    vim.api.nvim_set_var('terminal_color_5', purple)
    vim.api.nvim_set_var('terminal_color_6', cyan)
    vim.api.nvim_set_var('terminal_color_7', b0)
    vim.api.nvim_set_var('terminal_color_8', b6)
    vim.api.nvim_set_var('terminal_color_9', red)
    vim.api.nvim_set_var('terminal_color_10', green)
    vim.api.nvim_set_var('terminal_color_11', yellow)
    vim.api.nvim_set_var('terminal_color_12', blue)
    vim.api.nvim_set_var('terminal_color_13', purple)
    vim.api.nvim_set_var('terminal_color_14', cyan)
    vim.api.nvim_set_var('terminal_color_15', b5)
    vim.api.nvim_set_var('terminal_color_background', b0)
    vim.api.nvim_set_var('terminal_color_foreground', b7)
end

return M
