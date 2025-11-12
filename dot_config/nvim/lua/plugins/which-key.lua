return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
	config = function()
		local wk = require("which-key")
		wk.setup({
			preset = "modern",
			delay = 500, -- delay before showing the popup (ms)
			plugins = {
				marks = true, -- shows a list of your marks on ' and `
				registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
				spelling = {
					enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
					suggestions = 20,
				},
			},
			win = {
				border = "rounded",
				padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
			},
		})

		-- Document existing key chains
		wk.add({
			{ "<leader>f", group = "Find (Telescope)" },
			{ "<leader>g", group = "Go/Git/Format" },
			{ "<leader>l", group = "Lazy" },
			{ "<leader>c", group = "Code" },
		})
	end,
}
