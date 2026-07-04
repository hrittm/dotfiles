-- ~/.config/hypr/lua/settings.lua

-- Core compositor behavior that does not belong in decoration/input-specific files.
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 20,
		border_size = 2,

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
