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
ts["@constant.builtin"]  = { fg = c.pink }
ts["@constant.macro"]    = { fg = c.white }
-- ts["@define"]            = {}
-- ts["@macro"]             = {}
ts["@string"]            = { fg = c.white, bg = c.light_green }
ts["@string.escape"]     = { fg = c.blue }
ts["@string.special"]    = { fg = c.blue }
ts["@character"]         = { fg = c.white }
ts["@character.special"] = { fg = c.blue }
ts["@number"]            = { fg = c.purple }
ts["@boolean"]           = { fg = c.red }
ts["@float"]             = { fg = c.purple }
ts["@function"]          = { fg = c.white }
ts["@function.builtin"]  = { fg = c.blue }
ts["@function.macro"]    = { fg = c.white }
-- ts["@parameter"]         = {}
-- ts["@method"]            = {}
-- ts["@field"]             = {}
ts["@property"]          = { fg = c.white }
ts["@constructor"]       = { fg = c.white }
-- ts["@repeat"]            = {}
ts["@label"]             = { fg = c.white }
ts["@operator"]          = { fg = c.white }
ts["@keyword"]           = { fg = c.white }
-- ts["@exception"]         = {}
ts["@variable"]          = { fg = c.white }
ts["@type"]              = { fg = c.pink }
ts["@type.builtin"]      = { fg = c.pink }
ts["@type.qualifier"]    = { fg = c.pink }
ts["@type.definition"]   = { fg = c.pink }
ts["@type.qualifier"]    = { fg = c.pink }
-- ts["@storageclass"]      = {}
-- ts["@namespace"]         = {}
-- ts["@include"]           = {}
-- ts["@preproc"]           = {}
-- ts["@debug"]             = {}
ts["@tag"]               = { fg = c.white }
ts["@lsp.type.class"]         = { fg = c.pink }
ts["@lsp.type.comment"]       = { fg = c.grey, italic = true }
ts["@lsp.type.decorator"]     = { fg = c.white }
ts["@lsp.type.enum"]          = { fg = c.pink }
ts["@lsp.type.enumMember"]    = { fg = c.white, bg = c.light_blue }
ts["@lsp.type.function"]      = { fg = c.white }
ts["@lsp.type.interface"]     = { fg = c.pink }
ts["@lsp.type.macro"]         = { fg = c.white }
ts["@lsp.type.method"]        = { fg = c.white }
ts["@lsp.type.namespace"]     = { fg = c.white }
ts["@lsp.type.parameter"]     = { fg = c.white }
ts["@lsp.type.property"]      = { fg = c.white }
ts["@lsp.type.struct"]        = { fg = c.white }
ts["@lsp.type.type"]          = { fg = c.pink }
ts["@lsp.type.variable"]      = { fg = c.white }

-- Non-default
-- ts["@text"]          = {}
-- ts["@text.emphasis"] = {}
-- ts["@text.strong"]   = {}

-- ts["@text.emphasis.markdown_inline"] = {}
-- ts["@text.strong.markdown_inline"]   = {}
-- ts["@text.todo.unchecked.markdown"]  = {}
-- ts["@text.todo.checked.markdown"]    = {}
-- 
-- ts["@text.title.1"]        = {}
-- ts["@text.title.1.marker"] = {}
-- ts["@text.title.2"]        = {}
-- ts["@text.title.2.marker"] = {}
-- ts["@text.title.3"]        = {}
-- ts["@text.title.3.marker"] = {}
-- ts["@text.title.4"]        = {}
-- ts["@text.title.4.marker"] = {}
-- ts["@text.title.5"]        = {}
-- ts["@text.title.5.marker"] = {}
-- ts["@text.title.6"]        = {}
-- ts["@text.title.6.marker"] = {}

-- ts["@symbol"]         = { link="Constant" }

--- Markdown
M.markdown = {}
local m = M.markdown

m.markdownBold   = { fg=ts["@text.strong"].fg, bg="NONE", bold=true }
m.markdownItalic = { fg=ts["@text.emphasis"].fg, bg="NONE", italic=true }
m.markdownCode               = { link="Normal" }
m.markdownCodeDelimiter      = { link="Delimiter" }
m.markdownHeadingDelimiter   = { link="Delimiter" }
m.markdownRule               = { link="Delimiter" }
m.markdownFootnote           = { link="Identifier" }
m.markdownFootnoteDefinition = { link="Identifier" }
m.markdownUrl                = { link="Underlined" }
m.markdownLinkDelimiter      = { link="Delimiter" }
m.markdownLinkText           = { link="Identifier" }
m.markdownLinkTextDelimiter  = { link="Delimiter" }
m.markdownEscape             = { link="SpecialChar" }

-- See @text.title.* in TreeSitter section
m.markdownH1          = { fg= c.yellow }
m.markdownH1Delimiter = { fg= c.yellow }
m.markdownH2          = { fg= c.bright_cyan }
m.markdownH2Delimiter = { fg= c.bright_cyan }
m.markdownH3          = { fg= c.bright_green }
m.markdownH3Delimiter = { fg= c.bright_green }
m.markdownH4          = { fg= c.bright_red }
m.markdownH4Delimiter = { fg= c.bright_red }
m.markdownH5          = { fg= c.bright_violet }
m.markdownH5Delimiter = { fg= c.bright_violet }
m.markdownH6          = { fg= c.bright_blue }
m.markdownH6Delimiter = { fg= c.bright_blue }

--- TODO: Asciidoc
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

--- TODO: Git
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

--- Git Signs
M.gitsigns = {}
local g = M.gitsigns

g.GitSignsAdd      = { fg = c.base0 }
g.GitSignsChange   = { fg = c.base0 }
g.GitSignsDelete   = { fg = c.base0 }
g.GitSignsAddLn    = { fg = c.base0 }
g.GitSignsChangeLn = { fg = c.base0 }
g.GitSignsDeleteLn = { fg = c.base0 }

--- nvim-cmp
M.nvim_cmp = {}
local cmp = M.nvim_cmp

cmp.CmpItemAbbr           = { fg = c.grey, italic = true }
cmp.CmpItemAbbrDeprecated = { fg = c.dark_grey }
cmp.CmpItemAbbrMatch      = { fg = c.white }
cmp.CmpItemAbbrMatchFuzzy = { fg = c.white }
cmp.CmpItemKind           = { fg = c.black }
-- cmp.CmpItemMenu           = { fg=pal.gray, bg="NONE" }

--- TO-DO: Telescope
-- M.telescope = {}
-- local telescope = M.telescope
-- 
-- telescope.TelescopeBorder        =  { fg=pal.bright_black, bg=pal.black }
-- telescope.TelescopeTitle         = { link="Title" }
-- telescope.TelescopeMatching      = { fg=pal.yellow, bg="NONE", bold=true }
-- telescope.TelescopePromptCounter = { fg=pal.white, bg="NONE" }

-- neorg
M.neorg = {}
local n = M.neorg

-- headings
n["@neorg.headings.1.title.norg"] = { fg = c.base0, bg = c.light_blue }
n["@neorg.headings.1.prefix.norg"] = { fg = c.base0, bg = c.light_blue }
n["@neorg.links.location.heading.1.norg"] = { fg = c.base0, bg = c.light_blue }
n["@neorg.links.location.heading.1.prefix.norg"] = { fg = c.base0, bg = c.light_blue }
n["@neorg.markup.bold.norg"] = { fg = c.blue, bg = c.light_blue, bold = true }
n["@neorg.markup.italic.norg"] = { fg = c.green, bg = c.light_green, italic = true }
n["@neorg.markup.underline.norg"] = { fg = c.cyan, bg = c.light_cyan, underline = true }
n["@neorg.markup.strikethrough.norg"] = { fg = c.red, strikethrough = true }
n["@neorg.markup.superscript.norg"] = { fg = c.orange, bg = c.light_orange }
n["@neorg.markup.subscript.norg"] = { fg = c.purple, bg = c.light_purple }
n["@neorg.markup.variable.norg"] = { fg = c.base0, bg = c.green }
n["@neorg.markup.inline_math.norg"] = { fg = c.base0, bg = c.light_red }
n["@neorg.markup.verbatim.norg"] = { fg = c.light_orange, bg = c.base3 }
n["@neorg.quotes.1.content.norg"] = { fg = c.base0, bg = c.light_green }
n["@neorg.quotes.2.content.norg"] = { fg = c.base0, bg = c.light_blue }
n["@neorg.quotes.3.content.norg"] = { fg = c.base0, bg = c.light_yellow }
n["@neorg.quotes.4.content.norg"] = { fg = c.base0, bg = c.light_orange }
n["@neorg.quotes.5.content.norg"] = { fg = c.base0, bg = c.light_purple }
n["@neorg.quotes.6.content.norg"] = { fg = c.base0, bg = c.light_pink }
n["@neorg.lists.unordered.prefix.norg"] = { link = "Statement" }
n["@neorg.todo_items.undone.norg"] = { bg = c.light_red }
n["@neorg.todo_items.pending.norg"] = { bg = c.base5 }
n["@neorg.todo_items.on_hold.norg"] = { fg = c.base7, bg = c.base5 }
n["@neorg.todo_items.cancelled.norg"] = { fg = c.base3, bg = c.base5 }

return M
