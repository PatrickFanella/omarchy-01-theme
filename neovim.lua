--                  _             ____
--                  |\            |   \    .
--                  |  \ .        |    :   |\            /\
--               .  |   :|\__     |    |   | \          /  \
--  .            |\ |   |! \ \    |    |   | |\        /   /
--  \"-.______   | \:   ||\ \ \   |    |   | | \      /   /
--   \_       "-_|  |\  || \ \/   |    |___| ! |\____/  _/-. /\
--     "-_   ____:  |_\ ||  \/  ___\  __  _//  | |  ___ \---" /
--        \  \   |  _____,  /___\___\/ / /   \_! |  // _/  / /
--      ___\_ \__|  |    | __. _/____ / /     /  > // /    \/
--    //_________|  /    |/  |/  \__// /     /  /_/ \/
--               | /     |   :      | /     /__/
--               |/                 |/   E V A N G E L I O N
--

return {
	{
		"xero/evangelion.nvim",
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "evangelion",
			overrides = {
				-- remove that orange cursor-word block
				LspReferenceText = { bg = "NONE" },
				LspReferenceRead = { bg = "NONE" },
				LspReferenceWrite = { bg = "NONE" },

				-- OR: use underline instead (comment the bg lines above if you do this)
				-- LspReferenceText  = { underline = true },
				-- LspReferenceRead  = { underline = true },
				-- LspReferenceWrite = { underline = true },
			},
		},
	},
}

-- return {
--     {
--         "bjarneo/aether.nvim",
--         branch = "v2",
--         name = "aether",
--         priority = 1000,
--         opts = {
--             transparent = false,
--             colors = {
--                 -- Background colors
--                 bg = "#201430",
--                 bg_dark = "#14091E",
--                 bg_highlight = "#402C56",
--
--                 -- Foreground colors
--                 -- fg: Object properties, builtin types, builtin variables, member access, default text
--                 fg = "#E1D6F8",
--                 -- fg_dark: Inactive elements, statusline, secondary text
--                 fg_dark = "#A1A0AD",
--                 -- comment: Line highlight, gutter elements, disabled states
--                 comment = "#A1A0AD",
--
--                 -- Accent colors
--                 -- red: Errors, diagnostics, tags, deletions, breakpoints
--                 red = "#BF2D2D",
--                 -- orange: Constants, numbers, current line number, git modifications
--                 orange = "#D99145",
--                 -- yellow: Types, classes, constructors, warnings, numbers, booleans
--                 yellow = "#E6BB85",
--                 -- green: Comments, strings, success states, git additions
--                 green = "#87FF5F",
--                 -- cyan: Parameters, regex, preprocessor, hints, properties
--                 cyan = "#A4D2EC",
--                 -- blue: Functions, keywords, directories, links, info diagnostics
--                 blue = "#AB92FC",
--                 -- purple: Storage keywords, special keywords, identifiers, namespaces
--                 purple = "#CE67F0",
--                 -- magenta: Function declarations, exception handling, tags
--                 magenta = "#CE67F0",
--             },
--         },
--         config = function(_, opts)
--             require("aether").setup(opts)
--             vim.cmd.colorscheme("aether")
--
--             -- Enable hot reload
--             require("aether.hotreload").setup()
--         end,
--     },
--     {
--         "LazyVim/LazyVim",
--         opts = {
--             colorscheme = "aether",
--         },
--     },
-- }