-- Plugin for better comment syntax recognition

function SetupCommentstring()
	local cs = require("ts_context_commentstring")
	local csInternal = require("ts_context_commentstring.internal")

	local get_option = vim.filetype.get_option
	vim.filetype.get_option = function(filetype, option)
		return option == "commentstring" and csInternal.calculate_commentstring() or get_option(filetype, option)
	end

	cs.setup({
		enable_autocmd = false,
	})
end
return {
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		config = SetupCommentstring,
	},
}
