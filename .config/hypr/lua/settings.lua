-- ~/.config/hypr/lua/settings.lua
---@diagnostic disable: undefined-global
-- Core compositor behavior that does not belong in decoration/input-specific files.
hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 5,
		border_size = 1,
		col = {
			active_border = {
				colors = { "rgba(33ccffee)", "rgba(00ff99ee)" },
				angle = 45
			},
			inactive_border = "rgba(595959aa)"
		},

		-- Safer defaults for a regular desktop workflow.
		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",

		snap = {
			enabled = true,
			window_gap = 8,
			monitor_gap = 10,
			respect_gaps = true,
			border_overlap = false,
		},
	},

	dwindle = {
		preserve_split = true,
	},

	master = {
		new_status = "master",
	},

	scrolling = {
		fullscreen_on_one_column = true,
	},

	cursor = {
		persistent_warps = true,
		warp_on_toggle_special = 2,
	},
})
