local M = {}

function M.setup(colors)
    return {
		Normal = { fg = colors.base0, bg = colors.base7 },
		NormalFloat = { link = "Normal" },
		NonText = { fg = colors.base3 },

		SpecialKey = { fg = colors.blue },
		Directory = { link = "SpecialKey" },

		Title = { fg = colors.base0, bold = true },

		IncSearch = { fg = colors.base0, bg = colors.light_yellow },
		Search = { link = "IncSearch" },
		CurSearch = { link = "IncSearch" },

		LineNr = { fg = colors.base3 },
		CursorLineNr = { link = "Normal" },

		Question = { fg = colors.base0, bold = true },

		StatusLine = { fg = colors.base0, bg = colors.base7, bold = true },
		StatusLineNC = { fg = colors.base0, bg = colors.base7 },

		TabLine = { link = "Normal" },
		TabLineSel = { reverse = true },

		WinSeparator = { fg = colors.base0 },

		SignColumn = { link = "LineNr" },
		FoldColumn = { link = "SignColumn" },

		Conceal = { fg = colors.base5 },
		SpellBad = { fg = colors.base0, undercurl = true },
		SpellCap = { link = "SpellBad" },
		SpellLocal = { link = "SpellBad" },
		SpellRare = { link = "SpellBad" },

		Pmenu = { fg = colors.base0, bg = colors.base7 },
		PmenuSel = { fg = colors.base0, bg = colors.base3 },
		PmenuSbar = { bg = colors.base0 },
		PmenuThumb = { link = "PmenuSbar" },

		WildMenu = { bg = colors.base4 },
		Visual = { bg = colors.base5 },
		Folded = {},

		Cursor = { bg = colors.base2 },
		TermCursor = { link = "Cursor" },
		CursorLine = { bg = colors.base6 },
		CursorColumn = { link = "CursorLine" },

		ColorColumn = { bg = colors.light_yellow },

		MoreMsg = { fg = colors.cyan },
		ModeMsg = { fg = colors.blue },
		ErrorMsg = { fg = colors.base7, bg = colors.red },
		WarningMsg = { fg = colors.base7, bg = colors.orange },

		DiffAdd = { fg = colors.green },
		DiffChange = { fg = colors.orange },
		DiffDelete = { fg = colors.red },

		Comment = { fg = colors.base3, italic = true },
		Constant = { fg = colors.base0, bg = colors.light_blue }, -- String Character Number Boolean Float
		String = { fg = colors.base0, bg = colors.light_green },
		Identifier = { fg = colors.base0 },
		Delimiter = { link = "Identifier" },
		Statement = { fg = colors.base0, bg = colors.light_orange }, -- Conditional Repeat Label Operator Keyword Exception
		Operator = { link = "Identifier" },
		PreProc = { link = "Question" }, -- Include Define Macro PreCondit
		Type = { fg = colors.pink }, -- StorageClass Structure Typedef
		Special = { link = "SpecialKey" }, -- SpecialChar Tag Delimiter SpecialComment Debug
		Function = { link = "Identifier" },
		Underlined = { underline = true },
		Ignore = { fg = colors.base7 },
		Error = { link = "ErrorMsg" },
		Todo = { fg = colors.green },

		MatchParen = { fg = colors.red, underline = true },

		-- Plugins
		-- Lspsaga
		RenameNormal = { link = "Normal" },

		-- Treesittere
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = { link = "Type" },
		["@variable.parameter"] = { link = "Identifier" },
		["@variable.member"] = { link = "Identifier" },

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
		["@keyword.function"] = { bg = colors.light_purple },
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

        -- neorg
        -- headings
        ["@neorg.headings.1.title.norg"] = { fg = colors.base0, bg = colors.light_blue },
        ["@neorg.headings.1.prefix.norg"] = { fg = colors.base0, bg = colors.light_blue },
        ["@neorg.links.location.heading.1.norg"] = { fg = colors.base0, bg = colors.light_blue },
        ["@neorg.links.location.heading.1.prefix.norg"] = { fg = colors.base0, bg = colors.light_blue },
        -- markup
        ["@neorg.markup.bold.norg"] = { fg = colors.blue, bg = colors.light_blue, bold = true },
        ["@neorg.markup.italic.norg"] = { fg = colors.green, bg = colors.light_green, italic = true },
        ["@neorg.markup.underline.norg"] = { fg = colors.cyan, bg = colors.light_cyan, underline = true },
        ["@neorg.markup.strikethrough.norg"] = { fg = colors.red, strikethrough = true },
        ["@neorg.markup.superscript.norg"] = { fg = colors.orange, bg = colors.light_orange },
        ["@neorg.markup.subscript.norg"] = { fg = colors.purple, bg = colors.light_purple },
        ["@neorg.markup.variable.norg"] = { fg = colors.base0, bg = colors.light_green },
        ["@neorg.markup.inline_math.norg"] = { fg = colors.base0, bg = colors.light_red },
        ["@neorg.markup.verbatim.norg"] = { fg = colors.light_orange, bg = colors.base3 },
        -- quotes
        ["@neorg.quotes.1.content.norg"] = { fg = colors.base0, bg = colors.light_green },
        ["@neorg.quotes.2.content.norg"] = { fg = colors.base0, bg = colors.light_blue },
        ["@neorg.quotes.3.content.norg"] = { fg = colors.base0, bg = colors.light_yellow },
        ["@neorg.quotes.4.content.norg"] = { fg = colors.base0, bg = colors.light_orange },
        ["@neorg.quotes.5.content.norg"] = { fg = colors.base0, bg = colors.light_purple },
        ["@neorg.quotes.6.content.norg"] = { fg = colors.base0, bg = colors.light_pink },
        -- points
        ["@neorg.lists.unordered.prefix.norg"] = { link = "Statement" },
        ["@neorg.todo_items.undone.norg"] = { bg = colors.light_red },
        ["@neorg.todo_items.pending.norg"] = { bg = colors.base5 },
        ["@neorg.todo_items.on_hold.norg"] = { fg = colors.base7, bg = colors.base5 },
        ["@neorg.todo_items.cancelled.norg"] = { fg = colors.base3, bg = colors.base5 },

        -- lsp
        DiagnosticError = { fg = colors.red },
        DiagnosticHint = { fg = colors.base3 },
        DiagnosticInfo = { fg = colors.blue },
        DiagnosticOk = { fg = colors.green },
        DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
        DiagnosticUnderlineHint = { sp = colors.base3, undercurl = true },
        DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
        DiagnosticUnderlineOk = { sp = colors.green, undercurl = true },
        DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
        DiagnosticWarn = { fg = colors.orange },
        -- lsp highlights
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

        -- rainbow
        TSRainbowRed = { fg = colors.red },
        TSRainbowOrange = { fg = colors.orange },
        TSRainbowYellow = { fg = colors.yellow },
        TSRainbowGreen = { fg = colors.green },
        TSRainbowCyan = { fg = colors.cyan },
        TSRainbowBlue = { fg = colors.blue },
        TSRainbowViolet = { fg = colors.purple },

        -- rainbow-delimiters
        RainbowDelimiterRed = { fg = colors.red },
        RainbowDelimiterYellow = { fg = colors.yellow },
        RainbowDelimiterBlue = { fg = colors.blue },
        RainbowDelimiterOrange = { fg = colors.orange },
        RainbowDelimiterGreen = { fg = colors.green },
        RainbowDelimiterViolet = { fg = colors.purple },
        RainbowDelimiterCyan = { fg = colors.cyan },

        -- nvim-notify
        NotifyERRORBorder = { fg = colors.base0 },
        NotifyWARNBorder = { fg = colors.base0 },
        NotifyINFOBorder = { fg = colors.base0 },
        NotifyDEBUGBorder = { fg = colors.base0 },
        NotifyTRACEBorder = { fg = colors.base0 },
        NotifyERRORTitle = { fg = colors.red },
        NotifyWARNTitle = { fg = colors.orange },
        NotifyINFOTitle = { fg = colors.green },
        NotifyDEBUGTitle = { fg = colors.blue },
        NotifyTRACETitle = { fg = colors.purple },
        NotifyERRORIcon = { link = "NotifyERRORTitle" },
        NotifyWARNIcon = { link = "NotifyWARNTitle" },
        NotifyINFOIcon = { link = "NotifyINFOTitle" },
        NotifyDEBUGIcon = { link = "NotifyDEBUGTitle" },
        NotifyTRACEIcon = { link = "NotifyTRACETitle" },

        -- nvim-cmp
        CmpItemAbbr = { link = "Comment" },
        CmpItemAbbrDeprecated = { link = "Visual" },
        CmpItemAbbrMatch = { link = "Identifier" },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindText = { fg = colors.base0 },
        CmpItemKindSnippet = { fg = colors.base2 },
        CmpItemKindConstant = { fg = colors.blue },
        CmpItemKindVariable = { fg = colors.blue },
        CmpItemKindKeyword = { fg = colors.orange },
        CmpItemKindMethod = { fg = colors.purple },
        CmpItemKindFunction = { link = "CmpItemKindMethod" },
        CmpItemKindConstructor = { link = "CmpItemKindMethod" },
        CmpItemKindClass = { fg = colors.pink },
        CmpItemKindInterface = { link = "CmpItemKindClass" },
        CmpItemKindModule = { link = "CmpItemKindClass" },
        CmpItemKindStruct = { link = "CmpItemKindClass" },

        -- mini.deps
        MiniDepsChangeAdded = { fg = colors.green },
        MiniDepsChangeRemoved = { fg = colors.orange },
        MiniDepsHint = { fg = colors.base3 },
        MiniDepsInfo = { fg = colors.base0 },
        MiniDepsTitle = { fg = colors.base0, bold = true },
        MiniDepsTitleError = { fg = colors.red, bold = true },
        MiniDepsTitleSame = { fg = colors.blue, bold = true },
        MiniDepsTitleUpdate = { fg = colors.green, bold = true },

        -- mini.diff
        MiniDiffSignAdd = { bg = colors.light_green },
        MiniDiffSignChange = { bg = colors.light_orange },
        MiniDiffSignDelete = { bg = colors.light_red },
        MiniDiffOverAdd = { bg = colors.light_green },
        MiniDiffOverChange = { bg = colors.light_orange },
        MiniDiffOverContext = { bg = colors.light_cyan },
        MiniDiffOverDelete = { bg = colors.light_red },

        -- mini.files
        MiniFilesBorder = { link = "WinSeparator" }, -- border of regular windows.
        MiniFilesBorderModified = { link = "DiffChange" }, -- border of windows showing modified buffer.
        MiniFilesDirectory = { link = "SpecialKey" }, -- text and icon representing directory.
        MiniFilesFile = { link = "Identifier" }, -- text representing file.
        MiniFilesNormal = { link = "Normal" }, -- basic foreground/background highlighting.
        MiniFilesTitle = { link = "Comment" }, -- title of regular windows.
        MiniFilesTitleFocused = { link = "PreProc" }, -- title of focused window.

        -- mini.jump2d
        MiniJump2dSpot = { fg = colors.red, bold = true },
        MiniJump2dSpotAhead = { fg = colors.orange },

        -- mini.statusline
        MiniStatuslineModeNormal = { bg = colors.light_purple },
        MiniStatuslineModeInsert = { bg = colors.light_green },
        MiniStatuslineModeVisual = { bg = colors.light_cyan },
        MiniStatuslineModeReplace = { bg = colors.light_orange },
        MiniStatuslineModeCommand = { bg = colors.light_red },
        MiniStatuslineModeOther = { bg = colors.light_blue },
        MiniStatuslineInactive = { fg = colors.base3 },

        -- mini.starter
        MiniStarterHeader = { fg = colors.base0 },
        MiniStarterFooter = { fg = colors.base3 },
        MiniStarterItemPrefix = { fg = colors.red },

        -- mini.tabline
        MiniTablineCurrent = { fg = colors.base7, bg = colors.base0 },
        MiniTablineVisible = { link = "MiniTablineCurrent" },
        MiniTablineHidden = { fg = colors.base0, bg = colors.base7 },
        MiniTablineModifiedCurrent = { fg = colors.orange, bg = colors.base0 },
        MiniTablineModifiedVisible = { link = "MiniTablineModifiedCurrent" },
        MiniTablineModifiedHidden = { fg = colors.orange, bg = colors.base7 },

        -- barbar
        BufferCurrent = { link = "TabLineSel" },
        BufferCurrentIndex = { link = "TabLineSel" },
        BufferCurrentMod = { fg = colors.orange },
        BufferCurrentSign = { fg = colors.base7 },
        BufferCurrentTarget = { fg = colors.red },
        BufferInactive = { link = "TabLine" },
        BufferInactiveIndex = { link = "TabLine" },
        BufferInactiveMod = { link = "BufferCurrentMod" },
        BufferInactiveSign = { link = "BufferCurrentSign" },
        BufferInactiveTarget = { link = "BufferCurrentTarget" },
        BufferVisible = { link = "BufferInactive" },
        BufferVisibleIndex = { link = "BufferInactiveIndex" },
        BufferVisibleMod = { link = "BufferInactiveMod" },
        BufferVisibleSign = { link = "BufferInactiveSign" },
        BufferVisibleTarget = { link = "BufferInactiveTarget" },
        BufferTabpages = { link = "TabLine" },
        BufferTabpageFill = { link = "TabLine" },
        BufferOffset = { link = "TabLineSel" },
        BufferScrollArrow = { link = "TabLineSel" },

        -- noice.nvim
        NoiceCmdlinePopupTitle = { fg = colors.base0, bold = true },
        NoiceCmdlinePopupBorder = { fg = colors.base0 },

        -- Neogit
        NeogitDiffAdd = { bg = colors.light_green },
        NeogitDiffAddHighlight = { link = "NeogitDiffAdd" },
        NeogitDiffDelete = { bg = colors.light_red },
        NeogitDiffDeleteHighlight = { link = "NeogitDiffDelete" },
        NeogitHunkHeader = { link = "NeogitHunkHeaderHighlight" },

        -- Diffview
        DiffviewDiffAdd = { bg = colors.light_green },
        DiffviewDiffDelete = { bg = colors.light_red },
        DiffviewDiffChange = { bg = colors.light_orange },

        -- modicator.nvim
        NormalMode = { link = "Normal" },
        InsertMode = { bold = true },
        VisualMode = { link = "Visual" },
        CommandMode = { link = "NormalMode" },
        ReplaceMode = { fg = colors.red },
        SelectMode = { link = "VisualMode" },
        TerminalMode = { link = "NormalMode" },
        TerminalNormalMode = { link = "NormalMode" },

        -- aerial.nvim
        AerialLine = { link = "String" },

        -- gitsigns
        ["GitSignsAdd"] = { fg = colors.base0 },
        ["GitSignsChange"] = { fg = colors.base0 },
        ["GitSignsDelete"] = { fg = colors.base0 },
        ["GitSignsTopdelete"] = { fg = colors.base0 },
        ["GitSignsChangedelete"] = { fg = colors.base0 },
        ["GitSignsUntracked"] = { fg = colors.base0 },
    }
end

return M
