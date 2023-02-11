local status, catppuccin = pcall(require, "catppuccin")
if not status then
  return
end
--
-- catppuccin.setup({
-- 	flavour = "mocha", -- Can be one of: latte, frappe, macchiato, mocha
-- 	background = { light = "latte", dark = "mocha" },
-- 	dim_inactive = {
-- 		enabled = false,
-- 		-- Dim inactive splits/windows/buffers.
-- 		-- NOT recommended if you use old palette (a.k.a., mocha).
-- 		shade = "dark",
-- 		percentage = 0.15,
-- 	},
-- 	transparent_background = true,
-- 	term_colors = true,
-- 	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
-- 	styles = {
-- 		comments = { "italic" },
-- 		properties = {},
-- 		functions = {},
-- 		keywords = {},
-- 		operators = {},
-- 		conditionals = { "italic" },
-- 		loops = {},
-- 		booleans = {},
-- 		numbers = {},
-- 		types = {},
-- 		strings = {},
-- 		variables = {},
-- 	},
-- 	integrations = {
-- 		treesitter = true,
-- 		native_lsp = {
-- 			enabled = true,
-- 			virtual_text = {
-- 				errors = {},
-- 				hints = {},
-- 				warnings = {},
-- 				information = {},
-- 			},
-- 			underlines = {
-- 				errors = { "underline" },
-- 				hints = { "underline" },
-- 				warnings = { "underline" },
-- 				information = { "underline" },
-- 			},
-- 		},
-- 		lsp_saga = true,
-- 		gitsigns = true,
-- 		telescope = true,
-- 		nvimtree = true,
-- 		indent_blankline = { enabled = true, colored_indent_levels = false },
-- 		ts_rainbow = true,
-- 		mason = true,
-- 		cmp = true,
-- 		fidget = true,
-- 	},
-- 	color_overrides = {
-- 		all = {
-- 			-- rosewater = "#F5E0DC",
-- 			rosewater = "#fecaca",
-- 			flamingo = "#F2CDCD",
-- 			mauve = "#DDB6F2",
-- 			pink = "#F5C2E7",
-- 			red = "#F28FAD",
-- 			maroon = "#E8A2AF",
-- 			peach = "#F8BD96",
-- 			yellow = "#FAE3B0",
-- 			-- yellow = "#FAF3B0",
-- 			green = "#ABE9B3",
-- 			blue = "#96CDFB",
-- 			sky = "#89DCEB",
-- 			teal = "#94FFE7",
-- 			teal2 = "#B5E8E0",
-- 			lavender = "#C9CBFF",
--
-- 			text = "#D9E0EE",
-- 			subtext1 = "#BAC2DE",
-- 			subtext0 = "#A6ADC8",
-- 			overlay2 = "#C3BAC6",
-- 			overlay1 = "#988BA2",
-- 			overlay0 = "#6E6C7E",
-- 			surface2 = "#6E6C7E",
-- 			surface1 = "#575268",
-- 			surface0 = "#302D41",
--
-- 			base = "#1E1E2E",
-- 			mantle = "#1A1826",
-- 			crust = "#161320",
-- 		},
-- 	},
-- 	highlight_overrides = {
-- 		all = function(cp)
-- 			return {
-- 				-- For base configs.
-- 				CursorLineNr = { fg = cp.green },
-- 				Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
-- 				IncSearch = { bg = cp.pink, fg = cp.surface1 },
-- 				MatchParen = { bg = "#8f8e94", fg = "#3dfffc", style = { "bold", "underline" } },
--
-- 				-- For native lsp configs.
-- 				DiagnosticVirtualTextError = { bg = cp.none },
-- 				DiagnosticVirtualTextWarn = { bg = cp.none },
-- 				DiagnosticVirtualTextInfo = { bg = cp.none },
-- 				DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.none },
--
-- 				DiagnosticHint = { fg = cp.rosewater },
-- 				LspDiagnosticsDefaultHint = { fg = cp.rosewater },
-- 				LspDiagnosticsHint = { fg = cp.rosewater },
-- 				LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
-- 				LspDiagnosticsUnderlineHint = { sp = cp.rosewater },
--
-- 				-- For fidget.
-- 				FidgetTask = { bg = cp.none, fg = cp.surface2 },
-- 				FidgetTitle = { fg = cp.blue, style = { "bold" } },
--
-- 				-- For treesitter.
-- 				["@field"] = { fg = cp.rosewater },
-- 				["@property"] = { fg = cp.yellow },
--
-- 				["@include"] = { fg = cp.teal, style = { "bold" } },
-- 				["@operator"] = { fg = cp.sky },
-- 				["@keyword.operator"] = { fg = cp.sky },
-- 				["@punctuation.special"] = { fg = cp.maroon },
--
-- 				-- ["@float"] = { fg = cp.peach },
-- 				-- ["@number"] = { fg = cp.peach },
-- 				-- ["@boolean"] = { fg = cp.peach },
--
-- 				["@constructor"] = { fg = cp.lavender },
-- 				-- ["@constant"] = { fg = cp.peach },
-- 				-- ["@conditional"] = { fg = cp.mauve },
-- 				-- ["@repeat"] = { fg = cp.mauve },
-- 				["@exception"] = { fg = cp.peach },
--
-- 				["@constant.builtin"] = { fg = cp.lavender },
-- 				["@function.builtin"] = { fg = cp.peach, style = {} },
-- 				["@type.builtin"] = { fg = cp.peach, style = {} },
-- 				["@variable.builtin"] = { fg = cp.red, style = {} },
--
-- 				-- ["@function"] = { fg = cp.blue },
-- 				["@function.macro"] = { fg = cp.red, style = {} },
-- 				["@parameter"] = { fg = cp.rosewater, style = {} },
-- 				["@keyword.function"] = { fg = cp.maroon },
-- 				["@keyword"] = { fg = cp.red },
-- 				["@keyword.return"] = { fg = cp.pink, style = {} },
--
-- 				-- ["@text.note"] = { fg = cp.base, bg = cp.blue },
-- 				-- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
-- 				-- ["@text.danger"] = { fg = cp.base, bg = cp.red },
-- 				-- ["@constant.macro"] = { fg = cp.mauve },
--
-- 				-- ["@label"] = { fg = cp.blue },
-- 				["@method"] = { style = {} },
-- 				["@namespace"] = { fg = cp.rosewater, style = {} },
--
-- 				["@punctuation.delimiter"] = { fg = cp.teal },
-- 				["@punctuation.bracket"] = { fg = cp.overlay2 },
-- 				-- ["@string"] = { fg = cp.green },
-- 				-- ["@string.regex"] = { fg = cp.peach },
-- 				["@type"] = { fg = cp.peach },
-- 				["@variable"] = { fg = cp.blue, style = {} },
-- 				-- ["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
-- 				["@tag"] = { fg = cp.peach },
-- 				["@tag.delimiter"] = { fg = cp.maroon },
-- 				["@text"] = { fg = cp.text },
--
-- 				-- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
-- 				-- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
-- 				-- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
-- 				-- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
-- 				-- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
-- 				-- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
-- 				-- ["@string.escape"] = { fg = cp.pink },
--
-- 				-- ["@property.toml"] = { fg = cp.blue },
-- 				-- ["@field.yaml"] = { fg = cp.blue },
--
-- 				-- ["@label.json"] = { fg = cp.blue },
--
-- 				["@function.builtin.bash"] = { fg = cp.red, style = {} },
-- 				["@parameter.bash"] = { fg = cp.yellow, style = {} },
--
-- 				["@field.lua"] = { fg = cp.lavender },
-- 				["@constructor.lua"] = { fg = cp.flamingo },
--
-- 				["@constant.java"] = { fg = cp.teal },
--
-- 				["@property.typescript"] = { fg = cp.lavender, style = {} },
-- 				["@constructor.typescript"] = { fg = cp.lavender },
--
-- 				["@constructor.tsx"] = { fg = cp.lavender },
-- 				["@tag.attribute.tsx"] = { fg = cp.lavender, style = {} },
--
-- 				["@type.css"] = { fg = cp.lavender },
-- 				["@property.css"] = { fg = cp.yellow, style = {} },
--
-- 				["@property.cpp"] = { fg = cp.text },
--
-- 				["@symbol"] = { fg = cp.flamingo },
-- 			}
-- 		end,
-- 	},
-- })
catppuccin.setup({
  flavour = "macchiato",
  custom_highlights = function(C)
    return {
      CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
      CmpItemKindKeyword = { fg = C.base, bg = C.red },
      CmpItemKindText = { fg = C.base, bg = C.teal },
      CmpItemKindMethod = { fg = C.base, bg = C.blue },
      CmpItemKindConstructor = { fg = C.base, bg = C.blue },
      CmpItemKindFunction = { fg = C.base, bg = C.blue },
      CmpItemKindFolder = { fg = C.base, bg = C.blue },
      CmpItemKindModule = { fg = C.base, bg = C.blue },
      CmpItemKindConstant = { fg = C.base, bg = C.peach },
      CmpItemKindField = { fg = C.base, bg = C.green },
      CmpItemKindProperty = { fg = C.base, bg = C.green },
      CmpItemKindEnum = { fg = C.base, bg = C.green },
      CmpItemKindUnit = { fg = C.base, bg = C.green },
      CmpItemKindClass = { fg = C.base, bg = C.yellow },
      CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
      CmpItemKindFile = { fg = C.base, bg = C.blue },
      CmpItemKindInterface = { fg = C.base, bg = C.yellow },
      CmpItemKindColor = { fg = C.base, bg = C.red },
      CmpItemKindReference = { fg = C.base, bg = C.red },
      CmpItemKindEnumMember = { fg = C.base, bg = C.red },
      CmpItemKindStruct = { fg = C.base, bg = C.blue },
      CmpItemKindValue = { fg = C.base, bg = C.peach },
      CmpItemKindEvent = { fg = C.base, bg = C.blue },
      CmpItemKindOperator = { fg = C.base, bg = C.blue },
      CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
      CmpItemKindCopilot = { fg = C.base, bg = C.teal },
    }
  end,
  highlight_overrides = {
    all = function(cp)
      return {
        -- For base configs.
        CursorLineNr = { fg = cp.green },
        Search = { bg = cp.surface1, fg = cp.pink, style = { "bold" } },
        IncSearch = { bg = cp.pink, fg = cp.surface1 },
        MatchParen = { bg = "#8f8e94", fg = "#3dfffc", style = { "bold", "underline" } },

        -- For native lsp configs.
        DiagnosticVirtualTextError = { bg = cp.none },
        DiagnosticVirtualTextWarn = { bg = cp.none },
        DiagnosticVirtualTextInfo = { bg = cp.none },
        DiagnosticVirtualTextHint = { fg = cp.rosewater, bg = cp.none },

        DiagnosticHint = { fg = cp.rosewater },
        LspDiagnosticsDefaultHint = { fg = cp.rosewater },
        LspDiagnosticsHint = { fg = cp.rosewater },
        LspDiagnosticsVirtualTextHint = { fg = cp.rosewater },
        LspDiagnosticsUnderlineHint = { sp = cp.rosewater },

        -- For fidget.
        FidgetTask = { bg = cp.none, fg = cp.surface2 },
        FidgetTitle = { fg = cp.blue, style = { "bold" } },

        -- For treesitter.
        ["@field"] = { fg = cp.rosewater },
        ["@property"] = { fg = cp.yellow },

        ["@include"] = { fg = cp.teal, style = { "bold" } },
        ["@operator"] = { fg = cp.sky },
        ["@keyword.operator"] = { fg = cp.sky },
        ["@punctuation.special"] = { fg = cp.maroon },

        -- ["@float"] = { fg = cp.peach },
        -- ["@number"] = { fg = cp.peach },
        -- ["@boolean"] = { fg = cp.peach },

        ["@constructor"] = { fg = cp.lavender },
        -- ["@constant"] = { fg = cp.peach },
        -- ["@conditional"] = { fg = cp.mauve },
        -- ["@repeat"] = { fg = cp.mauve },
        ["@exception"] = { fg = cp.peach },

        ["@constant.builtin"] = { fg = cp.lavender },
        ["@function.builtin"] = { fg = cp.peach, style = {} },
        ["@type.builtin"] = { fg = cp.peach, style = {} },
        ["@variable.builtin"] = { fg = cp.red, style = {} },

        -- ["@function"] = { fg = cp.blue },
        ["@function.macro"] = { fg = cp.red, style = {} },
        ["@parameter"] = { fg = cp.rosewater, style = {} },
        ["@keyword.function"] = { fg = cp.maroon },
        ["@keyword"] = { fg = cp.red },
        ["@keyword.return"] = { fg = cp.pink, style = {} },

        -- ["@text.note"] = { fg = cp.base, bg = cp.blue },
        -- ["@text.warning"] = { fg = cp.base, bg = cp.yellow },
        -- ["@text.danger"] = { fg = cp.base, bg = cp.red },
        -- ["@constant.macro"] = { fg = cp.mauve },

        -- ["@label"] = { fg = cp.blue },
        ["@method"] = { style = {} },
        ["@namespace"] = { fg = cp.rosewater, style = {} },

        ["@punctuation.delimiter"] = { fg = cp.teal },
        ["@punctuation.bracket"] = { fg = cp.overlay2 },
        -- ["@string"] = { fg = cp.green },
        -- ["@string.regex"] = { fg = cp.peach },
        ["@type"] = { fg = cp.peach },
        ["@variable"] = { fg = cp.blue, style = {} },
        -- ["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
        ["@tag"] = { fg = cp.peach },
        ["@tag.delimiter"] = { fg = cp.maroon },
        ["@text"] = { fg = cp.text },

        -- ["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } },
        -- ["@text.literal"] = { fg = cp.teal, style = { "italic" } },
        -- ["@text.reference"] = { fg = cp.lavender, style = { "bold" } },
        -- ["@text.title"] = { fg = cp.blue, style = { "bold" } },
        -- ["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } },
        -- ["@text.strong"] = { fg = cp.maroon, style = { "bold" } },
        -- ["@string.escape"] = { fg = cp.pink },

        -- ["@property.toml"] = { fg = cp.blue },
        -- ["@field.yaml"] = { fg = cp.blue },

        -- ["@label.json"] = { fg = cp.blue },

        ["@function.builtin.bash"] = { fg = cp.red, style = {} },
        ["@parameter.bash"] = { fg = cp.yellow, style = {} },

        ["@field.lua"] = { fg = cp.lavender },
        ["@constructor.lua"] = { fg = cp.flamingo },

        ["@constant.java"] = { fg = cp.teal },

        ["@property.typescript"] = { fg = cp.lavender, style = {} },
        ["@constructor.typescript"] = { fg = cp.lavender },

        ["@constructor.tsx"] = { fg = cp.lavender },
        ["@tag.attribute.tsx"] = { fg = cp.lavender, style = {} },

        ["@type.css"] = { fg = cp.lavender },
        ["@property.css"] = { fg = cp.yellow, style = {} },

        ["@property.cpp"] = { fg = cp.text },

        ["@symbol"] = { fg = cp.flamingo },
      }
    end,
  },
})

-- local status, onedark = pcall(require, "onedark")
-- if not status then
-- 	return
-- end
--
-- onedark.setup({
-- 	style = "deep",
-- })
--
vim.g.material_style = "deep ocean"
vim.cmd.colorscheme("catppuccin")
