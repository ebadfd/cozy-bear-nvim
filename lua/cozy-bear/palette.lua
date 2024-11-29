local options = require("cozy-bear.config").options
local variants = {
	main = {
		_nc = "#10131b",      -- A slightly darker background for better contrast
		base = "#161a23",     -- Black 0 (main background layer)
		surface = "#212734",  -- Black 8 (secondary background)
		overlay = "#2b3242",  -- Overlay for depth
		muted = "#5e616b",    -- Muted tones for inactive elements
		subtle = "#818896",   -- Subtle tones for non-primary text
		text = "#dcd7c9",     -- Foreground text with a slightly softer white
		love = "#e5736f",     -- Red 1 with a bit of vibrancy
		gold = "#e7a954",     -- Yellow 3, softened for comfort
		rose = "#e89285",     -- Red 9 with warm highlights
		pine = "#528dbd",     -- Blue 4 with more clarity
		foam = "#8ac7c1",     -- Cyan 6, softened for easier readability
		iris = "#a493c7",     -- Magenta 5, balanced for subtle highlights
		leaf = "#99b56f",     -- Green 2, natural and calming
		highlight_low = "#161a23", -- Matches the base (low-emphasis highlights)
		highlight_med = "#2c3545", -- Medium-level highlights for active elements
		highlight_high = "#c9c1b2", -- High contrast for strong highlights
		none = "NONE"         -- Areas with no specific color
	}
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
