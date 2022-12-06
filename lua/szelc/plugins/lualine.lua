local setup, lualine = pcall(require, "lualine")
if not setup then
	return
end

lualine.setup({
	options = {
    -- theme = "horizon",
		disabled_filetypes = {
			"packer",
			"NvimTree",
		},
		component_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diagnostics" },
	},
})
