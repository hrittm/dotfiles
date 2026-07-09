-- ~/.config/hypr/lua/autostart.lua
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
---@diagnostic disable: undefined-global

hl.on("hyprland.start", function()
    -- Avoid duplicate instances and skip commands that are not installed.
    hl.exec_cmd("command -v waybar >/dev/null 2>&1 && pgrep -x waybar >/dev/null 2>&1 || waybar")
    hl.exec_cmd("command -v hyprpaper >/dev/null 2>&1 && pgrep -x hyprpaper >/dev/null 2>&1 || hyprpaper")
    hl.exec_cmd("command -v hypridle >/dev/null 2>&1 && pgrep -x hypridle >/dev/null 2>&1 || hypridle")
    hl.exec_cmd("command -v dunst >/dev/null 2>&1 && pgrep -x dunst >/dev/null 2>&1 || dunst")
    hl.exec_cmd("command -v gnome-keyring-daemon >/dev/null 2>&1 && pgrep -xu \"$USER\" gnome-keyring-daemon >/dev/null 2>&1 || gnome-keyring-daemon --start --components=secrets,ssh")
    hl.exec_cmd("command -v kbuildsycoca6 >/dev/null 2>&1 && XDG_MENU_PREFIX=arch- kbuildsycoca6 --noincremental")
    hl.exec_cmd("command -v nm-applet >/dev/null 2>&1 && pgrep -x nm-applet >/dev/null 2>&1 || nm-applet")
end)