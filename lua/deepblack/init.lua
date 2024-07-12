local M = {}

local function get_colors()
    return {
        base0 = "#FFFFFF", -- Pure white for maximum contrast
        base1 = "#E0E0E0", -- Very light gray
        base2 = "#BDBDBD", -- Light gray
        base3 = "#9E9E9E", -- Medium gray
        base4 = "#757575", -- Dark gray
        base5 = "#424242", -- Very dark gray
        base6 = "#212121", -- Almost black
        base7 = "#000000", -- Pure black for OLED

        light_orange = "#4D3319", -- Darker vibrant orange
        light_yellow = "#4D4D19", -- Darker vibrant yellow
        light_cyan = "#194D4D", -- Darker vibrant cyan
        light_green = "#194D19", -- Darker vibrant green
        light_blue = "#19194D", -- Darker vibrant blue
        --light_purple = "#4D194D", -- Darker vibrant purple
        light_purple = "#4B0082",
        light_pink = "#4D1933", -- Darker vibrant pink
        light_red = "#4D1919", -- Darker vibrant red

        orange = "#FF8C00", -- Vibrant dark orange
        yellow = "#FFD700", -- Vibrant gold
        cyan = "#00FFFF", -- Vibrant cyan
        green = "#00FF00", -- Vibrant green
        blue = "#1E90FF", -- Vibrant dodger blue
        purple = "#9932CC", -- Vibrant dark orchid
        pink = "#FF69B4", -- Vibrant hot pink
        red = "#FF4500", -- Vibrant orange-red
    }
end

function M.get_groups(c)
    return {
        Normal = { fg = c.base0, bg = c.base7 },
        NormalFloat = { link = "Normal" },
        NonText = { fg = c.base4 },

        SpecialKey = { fg = c.blue },
        Directory = { fg = c.cyan },

        Title = { fg = c.orange, bold = true },

        IncSearch = { fg = c.base7, bg = c.yellow },
        Search = { fg = c.base7, bg = c.blue },
        CurSearch = { fg = c.base7, bg = c.green },

        LineNr = { fg = c.base4 },
        CursorLineNr = { fg = c.yellow, bold = true },

        Question = { fg = c.green, bold = true },

        StatusLine = { fg = c.base0, bg = c.base5, bold = true },
        StatusLineNC = { fg = c.base2, bg = c.base6 },

        TabLine = { fg = c.base2, bg = c.base6 },
        TabLineSel = { fg = c.base0, bg = c.base5, bold = true },
        TabLineFill = { fg = c.base4, bg = c.base6 },

        WinSeparator = { fg = c.base4 },

        SignColumn = { bg = c.base7 },
        FoldColumn = { fg = c.base4, bg = c.base7 },

        Conceal = { fg = c.blue },
        SpellBad = { fg = c.red, undercurl = true },
        SpellCap = { fg = c.blue, undercurl = true },
        SpellLocal = { fg = c.cyan, undercurl = true },
        SpellRare = { fg = c.purple, undercurl = true },

        Pmenu = { fg = c.base1, bg = c.base6 },
        PmenuSel = { fg = c.base7, bg = c.blue },
        PmenuSbar = { bg = c.base5 },
        PmenuThumb = { bg = c.base4 },

        WildMenu = { fg = c.base7, bg = c.orange },
        Visual = { bg = c.base5 },
        Folded = { fg = c.base3, bg = c.base6, italic = true },

        Cursor = { fg = c.base7, bg = c.base0 },
        TermCursor = { link = "Cursor" },
        CursorLine = { bg = c.base6 },
        CursorColumn = { link = "CursorLine" },

        ColorColumn = { bg = c.base6 },

        MoreMsg = { fg = c.green, bold = true },
        ModeMsg = { fg = c.blue, bold = true },
        ErrorMsg = { fg = c.red, bold = true },
        WarningMsg = { fg = c.yellow, bold = true },

        DiffAdd = { fg = c.green, bg = c.light_green },
        DiffChange = { fg = c.orange, bg = c.light_orange },
        DiffDelete = { fg = c.red, bg = c.light_red },
        DiffText = { fg = c.yellow, bg = c.light_yellow, bold = true },

        Comment = { fg = c.base5, italic = true },
        Constant = { fg = c.orange, bg = c.light_orange },
        String = { fg = c.green },
        Character = { fg = c.green },
        Number = { fg = c.orange },
        Boolean = { fg = c.orange },
        Float = { fg = c.orange },

        Identifier = { fg = c.blue },
        Function = { fg = c.yellow },

        Statement = { fg = c.purple },
        Conditional = { fg = c.purple },
        Repeat = { fg = c.purple },
        Label = { fg = c.purple },
        Operator = { fg = c.cyan },
        Keyword = { fg = c.red, bg = c.light_red },
        Exception = { fg = c.red },

        PreProc = { fg = c.cyan },
        Include = { fg = c.blue },
        Define = { fg = c.purple },
        Macro = { fg = c.light_purple, bg = c.purple },
        PreCondit = { fg = c.yellow },

        Type = { fg = c.yellow, bg = c.light_yellow },
        StorageClass = { fg = c.orange },
        Structure = { fg = c.purple },
        Typedef = { fg = c.yellow },

        Special = { fg = c.pink },
        SpecialChar = { fg = c.pink },
        Tag = { fg = c.blue },
        Delimiter = { fg = c.base1 },
        SpecialComment = { fg = c.base3, bold = true },
        Debug = { fg = c.red },

        Underlined = { fg = c.blue, underline = true },
        Ignore = { fg = c.base6 },
        Error = { fg = c.red, bold = true },
        Todo = { fg = c.yellow, bold = true },

        MatchParen = { fg = c.base7, bg = c.blue, bold = true },

        -- Treesitter
        ["@variable"] = { fg = c.base1 },
        ["@variable.builtin"] = { link = "Type" },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@variable.member"] = { link = "@variable" },

        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Type" },
        ["@constant.macro"] = { link = "Define" },

        ["@module"] = { link = "Include" },
        ["@module.builtin"] = { link = "Include" },
        ["@label"] = { link = "Label" },

        ["@string"] = { link = "String" },
        ["@string.documentation"] = { link = "String" },
        ["@string.regexp"] = { link = "String" },
        ["@string.escape"] = { link = "SpecialChar" },
        ["@string.special"] = { link = "SpecialChar" },
        ["@string.special.symbol"] = { link = "Identifier" },
        ["@string.special.path"] = { link = "Underlined" },
        ["@string.special.url"] = { link = "Underlined" },

        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },

        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Float" },

        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@type.qualifier"] = { link = "Type" },
        ["@type.definition"] = { link = "Typedef" },

        ["@attribute"] = { link = "PreProc" },
        ["@property"] = { link = "Identifier" },

        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Special" },
        ["@function.call"] = { link = "Special" },
        ["@function.macro"] = { link = "Macro" },

        ["@function.method"] = { link = "@function" },
        ["@function.method.call"] = { link = "@function.call" },

        ["@constructor"] = { link = "Identifier" },
        ["@operator"] = { link = "Operator" },

        ["@keyword"] = { link = "Keyword" },
        ["@keyword.coroutine"] = { link = "Keyword" },
        ["@keyword.function"] = { bg = c.light_purple },
        ["@keyword.operator"] = { link = "Operator" },
        ["@keyword.import"] = { link = "Include" },
        ["@keyword.storage"] = { link = "Keyword" },
        ["@keyword.repeat"] = { link = "Repeat" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.debug"] = { link = "Debug" },
        ["@keyword.exception"] = { link = "Exception" },

        ["@keyword.conditional"] = { link = "Conditional" },
        ["@keyword.conditional.ternary"] = { link = "Conditional" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.directive.define"] = { link = "PreProc" },

        ["@punctutation.delimiter"] = { link = "Delimiter" },
        ["@punctutation.bracket"] = { link = "Delimiter" },
        ["@punctutation.special"] = { link = "Delimiter" },

        ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { link = "Comment" },

        ["@comment.warning"] = { link = "WarningMsg" },
        ["@comment.error"] = { link = "Error" },
        ["@comment.todo"] = { link = "Todo" },
        ["@comment.note"] = { link = "SpecialComment" },

        ["@markup.strong"] = { bold = true },
        ["@markup.emphasis"] = { italic = true },
        ["@markup.underline"] = { underline = true },
        ["@markup.strike"] = { strikethrough = true },

        ["@markup.heading"] = { link = "Title" },
        ["@markup.heading.gitcommit"] = { link = "@spell" },

        ["@markup.quote"] = { link = "Comment" },
        ["@markup.math"] = { link = "Special" },
        ["@markup.environment"] = { link = "Macro" },

        ["@markup.link"] = { link = "Underlined" },
        ["@markup.link.label"] = { link = "SpecialChar" },
        ["@markup.link.url"] = { link = "Keyword" },

        ["@markup.raw"] = { link = "SpecialComment" },
        ["@markup.raw.block"] = {},

        ["@markup.list"] = { link = "Identifier" },
        ["@markup.list.checked"] = { link = "Comment" },
        ["@markup.list.unchecked"] = { link = "Identifier" },

        ["@tag"] = { link = "Label" },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@tag.attribute"] = { link = "Identifier" },

        ["@diff.plus"] = { link = "DiffAdd" },
        ["@diff.minus"] = { link = "DiffDelete" },
        ["@diff.delta"] = { link = "DiffChange" },

        -- LSP
        DiagnosticError = { fg = c.red },
        DiagnosticHint = { fg = c.base3 },
        DiagnosticInfo = { fg = c.blue },
        DiagnosticOk = { fg = c.green },
        DiagnosticUnderlineError = { sp = c.red, undercurl = true },
        DiagnosticUnderlineHint = { sp = c.base3, undercurl = true },
        DiagnosticUnderlineInfo = { sp = c.blue, undercurl = true },
        DiagnosticUnderlineOk = { sp = c.green, undercurl = true },
        DiagnosticUnderlineWarn = { sp = c.orange, undercurl = true },
        DiagnosticWarn = { fg = c.orange },

        -- LSP Highlights
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.decorator"] = { link = "@function" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.function"] = { link = "@function.call" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.macro"] = { link = "@macro" },
        ["@lsp.type.method"] = { link = "@function.call" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.struct"] = { link = "@structure" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
        ["@lsp.typemod.function.declaration"] = { link = "@function" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
        ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.declaration"] = { link = "@function" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.type.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },

        -- Plugin-specific highlight groups can be added here
    }
end

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "deepblack"

    local colors = get_colors()
    local groups = M.get_groups(colors)

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M
