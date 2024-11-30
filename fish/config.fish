source ~/.config/fish/path.fish
source ~/.config/fish/env.fish

if status is-interactive
    alias ls="eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all  --sort type --grid"
    alias ll="eza --icons always --color always --long --git --all --sort type"
    alias tree="eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all  --sort type --tree --git-ignore"
    alias cat="batcat"
    alias zellij="zellij attach -c Zellij"
end

set -g fzf_preview_dir_cmd eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all --sort type

# set -g tide_pwd_bg_color cyan
set -g tide_pwd_color_dirs cyan
set -g tide_pwd_color_anchors cyan
set -g tide_pwd_color_truncated_dirs green

# set -g tide_os_bg_color red
set -g tide_os_color white
set -g tide_os_icon "󰚩 "

set -g fish_greeting ""
