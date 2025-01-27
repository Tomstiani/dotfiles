function GoTo(dir)
	return function()
		local path = vim.fn.expand(dir)

		vim.cmd("cd " .. path)
		vim.cmd("Neotree filesystem reveal dir=" .. path)
	end
end

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Lazy", group = "@property", action = "Lazy", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Monorepo",
						group = "DiagnosticHint",
						action = GoTo("~/work/ma/frontend-monorepo/"),
						key = "a",
					},
					{
						desc = " Nvim config",
						group = "Number",
						action = GoTo("~/.config/nvim/"),
						key = "d",
					},
				},
			},
		})
	end,
	requires = { "nvim-tree/nvim-web-devicons" },
}
