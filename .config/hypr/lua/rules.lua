-- ~/.config/hypr/lua/rules.lua

-- Window rules that improve day-to-day behavior without becoming app-specific noise.

-- Ignore maximize requests from clients that still emit them by habit.
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

-- Fix common XWayland drag/resize issues for override-redirect and empty-shell windows.
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Keep the launcher usable without having to add a separate floating rule later.
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- Dialogs and file pickers should stay readable and centered.
hl.window_rule({
	name = "browser-dialogs",
	match = {
		title = "^(Open|Save|Select|Choose|Import|Export).*$",
	},

	float = true,
	center = true,
	size = "1100 750",
})

hl.window_rule({
	name = "file-picker-utilities",
	match = {
		class = "^(xdg-desktop-portal-gtk|zenity|kdialog|org\\.gtk\\.Settings\\.FileChooser)$",
	},

	float = true,
	center = true,
	size = "1100 750",
})

-- Pavucontrol is much nicer as a centered floating utility.
hl.window_rule({
	name = "pavucontrol-float",
	match = {
		class = "^[Pp]avucontrol$",
	},

	float = true,
	center = true,
	size = "980 680",
})

-- Smart gaps: collapse the outer padding for specific tiling-heavy workspaces.
hl.workspace_rule({ workspace = "n[s:window] w[tv1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })
hl.workspace_rule({ workspace = "n[s:window] f[1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })
