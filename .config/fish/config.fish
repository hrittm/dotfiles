if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    set -gx BROWSER firefox

    if test -d "$HOME/.local/bin"
        fish_add_path "$HOME/.local/bin"
    end
end
