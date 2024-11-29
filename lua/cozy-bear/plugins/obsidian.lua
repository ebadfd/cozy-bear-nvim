--- Rosé Pine for Obsidian(epwalsh)
--- https://github.com/epwalsh/obsidian.nvim
---
--- @usage
--- local highlights = require("cozy-bear.plugins.obsidian")
--- require("obsidian").setup({ ui = {hl_groups = highlights} })

local p = require("cozy-bear.palette")

return {
	ObsidianBullet = { fg = p.muted },
	ObsidianRefText = { underline = true, fg = p.iris },
	ObsidianDone = { bold = true, fg = p.foam }
}
