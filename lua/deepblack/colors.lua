local M = {}

M.colors = {
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


local c = M.colors

M.group = {}
local g = M.group

g.Comment      = { fg = c.grey, italic = true }
g.Constant     = { fg = c.white, bg = c.light_blue }
g.String       = { fg = c.white, bg = c.light_green }
g.Character    = { fg = c.white }
g.Number       = { fg = c.purple }
g.Boolean      = { fg = c.red }
g.Float        = { fg = c.purple }
g.Identifier   = { fg = c.white }
g.Function     = { fg = c.white }
g.Statement    = { fg = c.white, c.light_orange }
g.Conditional  = { fg = c.white }
g.Repeat       = { fg = c.white }
g.Label        = { fg = c.white }
g.Operator     = { fg = c.white }
g.Keyword      = { fg = c.white }
g.Exception    = { fg = c.orange }
g.PreProc      = { fg = c.white, bold = true }
g.Include      = { fg = c.white }
g.Define       = { fg = c.white }
g.Macro        = { fg = c.white }
g.PreCondit    = { fg = c.white }
g.Type         = { fg = c.pink }
g.StorageClass = { fg = c.white }
g.Structure    = { fg = c.white }
g.Typedef      = { fg = c.pink }
g.Special      = { fg = c.blue }
g.SpecialChar  = { fg = c.blue }
g.Tag          = { fg = c.blue }
g.Delimiter    = { fg = c.white }
g.SpecialComment = { fg = c.grey, italic = true }
g.Debug        = { fg = c.blue }
-- g.Underlined   = {}
g.Ignore       = { fg = c.light_grey }
g.Error        = { fg = c.light_grey, bg = c.red }
g.Todo         = { fg = c.green }

M.diagnostic = {}
local d = M.diagnostic

d.DiagnosticError = { fg = c.red }
d.DiagnosticWarn  = { fg = c.orange }
d.DiagnosticInfo  = { fg = c.blue }
d.DiagnosticHint  = { fg = c.grey }
d.DiagnosticOk    = { fg = c.green }
d.DiagnosticUnderlineError = { sp = c.red, undercurl = true }
d.DiagnosticUnderlineWarn  = { sp = c.orange, undercurl = true }
d.DiagnosticUnderlineInfo  = { sp = c.blue, undercurl = true }
d.DiagnosticUnderlineHint  = { sp = c.grey, undercurl = true }
d.DiagnosticUnderlineOk    = { sp = c.green, undercurl = true }
-- d.DiagnosticVirtualTextError = {}
-- d.DiagnosticVirtualTextWarn  = {}
-- d.DiagnosticVirtualTextInfo  = {}
-- d.DiagnosticVirtualTextHint  = {}
-- d.DiagnosticVirtualTextOk    = {}
-- d.DiagnosticFloatingError = {}
-- d.DiagnosticFloatingWarn  = {}
-- d.DiagnosticFloatingInfo  = {}
-- d.DiagnosticFloatingHint  = {}
-- d.DiagnosticFloatingOk    = {}
-- d.DiagnosticDeprecated  = {}
-- d.DiagnosticUnnecessary = {}
-- d.LspReferenceText  = {}
-- d.LspReferenceRead  = {}
-- d.LspReferenceWrite = {}

M.treesitter = {}
local ts = M.treesitter

-- TO DO
-- ts["@text"]              = {}
-- ts["@text.literal"]      = {}
-- ts["@text.reference"]    = {}
-- ts["@text.title"]        = {}
-- ts["@text.uri"]          = {}
-- ts["@text.underline"]    = {}
-- ts["@text.todo"]         = {}
ts["@comment"]           = { fg = c.grey, italic = true }
-- ts["@punctuation"]       = {}
ts["@constant"]          = { fg = c.white, bg = c.light_blue }
ts["@constant.builtin"]  = {}
ts["@constant.macro"]    = {}
ts["@define"]            = {}
ts["@macro"]             = {}
ts["@string"]            = {}
ts["@string.escape"]     = {}
ts["@string.special"]    = {}
ts["@character"]         = {}
ts["@character.special"] = {}
ts["@number"]            = {}
ts["@boolean"]           = {}
ts["@float"]             = {}
ts["@function"]          = {}
ts["@function.builtin"]  = {}
ts["@function.macro"]    = {}
ts["@parameter"]         = {}
ts["@method"]            = {}
ts["@field"]             = {}
ts["@property"]          = {}
ts["@constructor"]       = {}
ts["@repeat"]            = {}
ts["@label"]             = {}
ts["@operator"]          = {}
ts["@keyword"]           = {}
ts["@exception"]         = {}
ts["@variable"]          = {}
ts["@type"]              = {}
ts["@type.definition"]   = {}
ts["@storageclass"]      = {}
ts["@namespace"]         = {}
ts["@include"]           = {}
ts["@preproc"]           = {}
ts["@debug"]             = {}
ts["@tag"]               = {}
ts["@lsp.type.class"]         = {}
ts["@lsp.type.comment"]       = {}
ts["@lsp.type.decorator"]     = {}
ts["@lsp.type.enum"]          = {}
ts["@lsp.type.enumMember"]    = {}
ts["@lsp.type.function"]      = {}
ts["@lsp.type.interface"]     = {}
ts["@lsp.type.macro"]         = {}
ts["@lsp.type.method"]        = {}
ts["@lsp.type.namespace"]     = {}
ts["@lsp.type.parameter"]     = {}
ts["@lsp.type.property"]      = {}
ts["@lsp.type.struct"]        = {}
ts["@lsp.type.type"]          = {}
ts["@lsp.type.typeParameter"] = {}
ts["@lsp.type.variable"]      = {}

-- Non-default
ts["@text"]          = {}
ts["@text.emphasis"] = {}
ts["@text.strong"]   = {}

ts["@text.emphasis.markdown_inline"] = {}
ts["@text.strong.markdown_inline"]   = {}
ts["@text.todo.unchecked.markdown"]  = {}
ts["@text.todo.checked.markdown"]    = {}

ts["@text.title.1"]        = {}
ts["@text.title.1.marker"] = {}
ts["@text.title.2"]        = {}
ts["@text.title.2.marker"] = {}
ts["@text.title.3"]        = {}
ts["@text.title.3.marker"] = {}
ts["@text.title.4"]        = {}
ts["@text.title.4.marker"] = {}
ts["@text.title.5"]        = {}
ts["@text.title.5.marker"] = {}
ts["@text.title.6"]        = {}
ts["@text.title.6.marker"] = {}

-- UNTOUCHED
M.hi_formatted_text = {
    ["@text.emphasis"] = { fg=pal.yellow, bg=ts["@text"].bg, italic=true },
    ["@text.strong"]   = { fg=pal.yellow, bg=ts["@text"].bg, bold=true }
}

ts["@symbol"]         = { link="Constant" }
ts["@type.builtin"]   = { fg=syntax.Type.fg, bg=syntax.Type.bg, italic=true }
ts["@type.qualifier"] = { link = "Keyword" }

--- Markdown
M.markdown = {}
local markdown = M.markdown

markdown.markdownBold   = { fg=ts["@text.strong"].fg, bg="NONE", bold=true }
markdown.markdownItalic = { fg=ts["@text.emphasis"].fg, bg="NONE", italic=true }
markdown.markdownCode               = { link="Normal" }
markdown.markdownCodeDelimiter      = { link="Delimiter" }
markdown.markdownHeadingDelimiter   = { link="Delimiter" }
markdown.markdownRule               = { link="Delimiter" }
markdown.markdownFootnote           = { link="Identifier" }
markdown.markdownFootnoteDefinition = { link="Identifier" }
markdown.markdownUrl                = { link="Underlined" }
markdown.markdownLinkDelimiter      = { link="Delimiter" }
markdown.markdownLinkText           = { link="Identifier" }
markdown.markdownLinkTextDelimiter  = { link="Delimiter" }
markdown.markdownEscape             = { link="SpecialChar" }

-- See @text.title.* in TreeSitter section
markdown.markdownH1          = { fg=pal.yellow,        bg="NONE" }
markdown.markdownH1Delimiter = { fg=pal.yellow,        bg="NONE" }
markdown.markdownH2          = { fg=pal.bright_cyan,   bg="NONE" }
markdown.markdownH2Delimiter = { fg=pal.bright_cyan,   bg="NONE" }
markdown.markdownH3          = { fg=pal.bright_green,  bg="NONE" }
markdown.markdownH3Delimiter = { fg=pal.bright_green,  bg="NONE" }
markdown.markdownH4          = { fg=pal.bright_red,    bg="NONE" }
markdown.markdownH4Delimiter = { fg=pal.bright_red,    bg="NONE" }
markdown.markdownH5          = { fg=pal.bright_violet, bg="NONE" }
markdown.markdownH5Delimiter = { fg=pal.bright_violet, bg="NONE" }
markdown.markdownH6          = { fg=pal.bright_blue,   bg="NONE" }
markdown.markdownH6Delimiter = { fg=pal.bright_blue,   bg="NONE" }

--- TODO: Asciidoc (unchecked)
-- asciidocAttributeEntry
-- asciidocAttributeList
-- asciidocAttributeRef
-- asciidocHLabel
-- asciidocListingBlock
-- asciidocMacroAttributes
-- asciidocOneLineTitle
-- asciidocPassthroughBlock
-- asciidocQuotedMonospaced
-- asciidocTriplePlusPassthrough
-- asciidocMacro
-- asciidocAdmonition
-- asciidocQuotedEmphasized
-- asciidocQuotedEmphasized2
-- asciidocQuotedEmphasizedItalic
-- asciidocBackslash
-- asciidocQuotedBold
-- asciidocQuotedMonospaced2
-- asciidocQuotedUnconstrainedBold
-- asciidocQuotedUnconstrainedEmphasized
-- asciidocURL

--- TODO: org-mode
M.orgmode = {}
local orgmode = M.orgmode
orgmode.org_bold   = { fg=ts["@text.strong"].fg, bg="NONE", bold=true }
orgmode.org_italic = { fg=ts["@text.emphasis"].fg, bg="NONE", italic=true }

--- C
M.c = {}
local c = M.c

c.cTypedef        = { link="Keyword" }
c.cStructure      = { link="Keyword" }
c.cPreCondit      = { link="PreProc" }
c.cPreConditMatch = { link="PreProc" }
c.cDefine         = { link="Define" }

--- CPP
M.cpp = {}
local cpp = M.cpp

cpp.cppAccess    = { link="Type" }
cpp.cppStructure = { link="Keyword" }

--- JSON
M.json = {}
local json = M.json

json.jsonNull  = { link="Special" }
json.jsonQuote = { link="Delimiter" }

--- HTML
M.html = {}
local html = M.html

html.htmlTag    = { link="Tag" }
html.htmlEndTag = { link="Tag" }

--- PHP
M.php = {}
local php = M.php

php.phpVarSelector    = { link="Identifier" }
php.phpStructure      = { link="Keyword" }
php.phpStorageClass   = { link="Type" }
php.phpMemberSelector = { link="Operator" }
php.phpClasses        = { link="Type" }

--- CSS
M.css = {}
local css = M.css

css.cssTagName       = { link="Type" }
css.cssBraces        = { link="Delimiter" }
css.cssClassName     = { link="Identifier" }
css.cssClassNameDot  = { link="Delimiter" }
css.cssIdentifier    = { link="Identifier" }
css.cssPseudoClassId = { link="Identifier" }

--- JavaScript
M.javascript = {}
local javascript = M.javascript

javascript.javaScriptParens     = { link="Delimiter" }
javascript.javaScriptBraces     = { link="Delimiter" }
javascript.javaScriptIdentifier = { link="Keyword" }
javascript.javaScriptFunction   = { link="Keyword" }

--- Typescript
M.typescript = {}
local typescript = M.typescript

typescript.typescriptVariable        = { link="Keyword" }
typescript.typescriptVariableDeclaration = { link="Identifier" }
typescript.typescriptTypeAnnotation  = { link="Delimiter" }
typescript.typescriptAssign          = { link="Operator" }
typescript.typescriptparens          = { link="Delimiter" }
typescript.typescriptBraces          = { link="Delimiter" }
typescript.typescriptGlobal          = { link="Identifier" }
typescript.typescriptBinaryOp        = { link="Operator" }
typescript.typescriptLoopParen       = { link="Operator" }
typescript.typescriptConsoleMethod   = { link="Function" }
typescript.typescriptDotNotation     = { link="Delimiter" }
typescript.typescriptTypeBracket     = { link="Delimiter" }
typescript.typescriptMember          = { link="Identifier" }
typescript.typescriptDOMFormProp     = { link="Identifier" }
typescript.typescriptClassName       = { link="Type" }
typescript.typescriptBOMWindowMethod = { link="Function" }
typescript.typescriptTypeReference   = { link="Type" }
typescript.typescriptTypeBrackets    = { link="Delimiter" }
typescript.typescriptArrowFunc       = { link="Operator" }
typescript.typescriptPromiseMethod   = { link="Function" }
typescript.typescriptCall            = { link="Identifier" }
typescript.typescriptFuncComma       = { link="Delimiter" }
typescript.typescriptTypeParameter   = { link="Type" }

--- XML
M.xml = {}
local xml = M.xml

xml.xmlTag        = { link="Tag" }
xml.xmlTagName    = { link="Tag" }
xml.xmlAttrib     = { link="Tag" }
xml.xmlProcessing = { link="Tag" }
xml.xmlEqual      = { link="Delimiter" }

--- Ruby
M.ruby = {}
local ruby = M.ruby

ruby.rubyCurlyBlockDelimiter = { link="Delimiter" }

--- Golang
M.go = {}
local go = M.go

go.goFormatSpecifier       = { link="SpecialChar" }
go.goEscapeC               = { link="SpecialChar" }
go.goBuiltins              = { link="Special" }
go.goPredefinedIdentifiers = { link="Special" }

--- Python
M.python = {}
local python = M.python

python.pythonBuiltin = { link="Special" }

--- TeX
M.tex = {}
local tex = M.tex

tex.texSection   = { link="Identifier" }
tex.texStatement = { link="Function" }
tex.texInputFile = { link="String" }

--- TODO: Git (unchecked)
-- gitcommitHeader
-- gitcommitOnBranch
-- gitcommitBranch
-- gitcommitComment
-- gitcommitSelectedType
-- gitcommitSelectedFile
-- gitcommitDiscardedType
-- gitcommitDiscardedFile
-- gitcommitOverflow
-- gitcommitSummary
-- gitcommitBlank

--- Lua
M.lua = {}
local lua = M.lua

lua.luaFunction   = { link="Keyword" }
lua.luaFunc       = { link="Function" }
lua.luaMetaMethod = { link="Identifier" }

--- SH
M.sh = {}
local sh = M.sh

sh.shVarAssign   = { link="Keyword" }
sh.shDerefSimple = { link="Identifier" }
sh.shRange       = { link="Delimiter" }
sh.shQuote       = { link="String" }
sh.shLoop        = { link="Repeat" }
sh.shFor         = { link="Identifier" }
sh.shSnglCase    = { link="Delimiter" }

--- SQL
M.sql = {}
local sql = M.sql

sql.sqlKeyword  = { link="Keyword" }
sql.shStatement = { link="Special" }

--- YAML
M.yaml = {}
local yaml = M.yaml

yaml.yamlKeyValueDelimiter = { link="Delimiter" }
yaml.yamlBlockCollectionItemStart = { link="Delimiter" }
yaml.yamlPlainScalar       = { link="String" }
yaml.yamlNull              = { link="Special" }

--- Gitgutter
M.gitgutter = {}
local gitgutter = M.gitgutter

gitgutter.GitGutterAdd    = { fg=pal.bright_green, bg="#232526", bold=true}
gitgutter.GitGutterChange = { fg=pal.bright_black, bg="#232526", bold=true}
gitgutter.GitGutterDelete = { fg=pal.bright_red, bg="#232526", bold=true}
gitgutter.GitGutterAddLine    = { fg=pal.black, bg=pal.bright_green }
gitgutter.GitGutterChangeLine = { fg=pal.black, bg=pal.bright_black }
gitgutter.GitGutterDeleteLine = { fg=pal.black, bg=pal.bright_red }

--- Git Signs
M.gitsigns = {}
local gitsigns = M.gitsigns

gitsigns.GitSignsAdd    = { fg=pal.bright_green, bg="#232526", bold=true}
gitsigns.GitSignsChange = { fg=pal.bright_black, bg="#232526", bold=true}
gitsigns.GitSignsDelete = { fg=pal.bright_red, bg="#232526", bold=true}
gitsigns.GitSignsAddLn    = { fg=pal.black, bg=pal.bright_green }
gitsigns.GitSignsChangeLn = { fg=pal.black, bg=pal.bright_black }
gitsigns.GitSignsDeleteLn = { fg=pal.black, bg=pal.bright_red }

--- NvimTree
M.nvimtree = {}
local nvimtree = M.nvimtree

nvimtree.NvimTreeRootFolder  = { link="Title" }
nvimtree.NvimTreeSpecialFile = { fg=pal.cyan, bg="NONE" }
nvimtree.NvimTreeGitDirty    = { fg=pal.bright_yellow, bg="NONE" }
nvimtree.NvimTreeGitNew      = { fg=pal.gray, bg="NONE" }
nvimtree.NvimTreeGitStaged   = { fg=pal.bright_green, bg="NONE" }
nvimtree.NvimTreeGitMerge    = { fg=pal.violet, bg="NONE" }

--- TODO: Bufferline (unchecked)
-- BufferLineIndicatorSelected
-- BufferLineFill

--- TODO: BarBar (unchecked)
-- BufferCurrent
-- BufferCurrentIndex
-- BufferCurrentMod
-- BufferCurrentSign
-- BufferCurrentTarget
-- BufferVisible
-- BufferVisibleIndex
-- BufferVisibleMod
-- BufferVisibleSign
-- BufferVisibleTarget
-- BufferInactive
-- BufferInactiveIndex
-- BufferInactiveMod
-- BufferInactiveSign
-- BufferInactiveTarget
-- BufferTabpages
-- BufferTabpagesFill

--- IndentBlankline
M.indentblankline = {}
local indentblankline = M.indentblankline

-- v2
indentblankline.IndentBlanklineContextChar  = { fg="#7E8E91", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineContextStart = { sp="#7E8E91", bg="NONE", nocombine=true, underline=true }
indentblankline.IndentBlanklineChar               = { fg="#31383A", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineSpaceChar          = { fg="#31383A", bg="NONE", nocombine=true }
indentblankline.IndentBlanklineSpaceCharBlankline = { fg="#31383A", bg="NONE", nocombine=true }
-- v3
indentblankline.IblIndent     = { fg="#31383A", bg="NONE", nocombine=true }
indentblankline.IblWhitespace = { fg="#7E8E91", bg="NONE", nocombine=true }
indentblankline.IblScope      = { fg="#7E8E91", bg="NONE", nocombine=true }

--- TODO: COC.nvim
-- See https://github.com/neoclide/coc.nvim/blob/eb63f778d09c37095352fb47f75e592d3d2d0192/doc/coc.txt#L3168
-- CocHighlightText
-- CocHighlightRead
-- CocHighlightWrite

--- nvim-cmp
M.nvim_cmp = {}
local nvim_cmp = M.nvim_cmp

nvim_cmp.CmpItemAbbr           = { fg="#66d9ef", bg="NONE" }
nvim_cmp.CmpItemAbbrDeprecated = { fg="#7E8E91", bg="NONE" }
nvim_cmp.CmpItemAbbrMatch      = { fg=pal.yellow, bg="NONE", bold=true }
nvim_cmp.CmpItemAbbrMatchFuzzy = { fg=pal.yellow, bg="NONE", bold=true }
nvim_cmp.CmpItemKind           = { fg=pal.white, bg="NONE" }
nvim_cmp.CmpItemMenu           = { fg=pal.gray, bg="NONE" }

--- Telescope
M.telescope = {}
local telescope = M.telescope

telescope.TelescopeBorder        =  { fg=pal.bright_black, bg=pal.black }
telescope.TelescopeTitle         = { link="Title" }
telescope.TelescopeMatching      = { fg=pal.yellow, bg="NONE", bold=true }
telescope.TelescopePromptCounter = { fg=pal.white, bg="NONE" }

--- WhickKey
M.whichkey = {}
local whichkey = M.whichkey

whichkey.WhichKeyFloat = { fg="NONE", bg="#171717" }

--- TODO: DapUI (?)
--- TODO: DevIcon (?)
--- TODO: Dashboard (?)
--- TODO: hlargs.nvim (?)
--- TODO: trouble.nvim (?)
--- TODO: nvim-lightbulb (?)

return M
