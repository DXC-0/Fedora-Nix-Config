{ config, pkgs, ... }:

{
  home.file.".config/dunst/dunstrc".text = ''
    [global]
    frame_color = "#da70d4"
    frame_width = 5
    separator_color = frame
    highlight = "#8aadf4"
    foreground = "#ffffff"
    background = "#000000"
    width = (0,700)
    notification_limit = 20
    font = 14
    min_icon_size = 800
    corner_radius = 11
    offset = 0x0
  '';
}