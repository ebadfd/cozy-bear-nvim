local options = require("cozy-bear.config").options
local variants = {
	main = {
		_nc = "#0a0e14",      -- Adjusted to match Cozy Bear's background
		base = "#181b23",     -- Black 0
		surface = "#1f1d2e",  -- Black 8
		overlay = "#1f1d2e",  -- Subtle background layer
		muted = "#6e6a86",    -- Neutral muted tones
		subtle = "#908caa",   -- Slightly vibrant gray
		text = "#d3c8ba",     -- Foreground text color
		love = "#d36c6c",     -- Red 1
		gold = "#e7a953",     -- Yellow 3
		rose = "#e88383",     -- Red 9 (bright)
		pine = "#78b6bc",     -- Cyan 6
		foam = "#4d8dc4",     -- Blue 4
		iris = "#b18bbb",     -- Magenta 5
		leaf = "#a1c05d",     -- Green 2
		highlight_low = "#181b23", -- Black 0 (low contrast highlight)
		highlight_med = "#26233a", -- Mid-level highlight
		highlight_high = "#bcb4a9", -- Soft white for high contrast
		none = "NONE"         -- For areas with no specific color
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
