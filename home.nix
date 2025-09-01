{ pkgs, ... }:


{

##### GLOBAL CONFIGURATION #####

  home.username = "alerion";
  home.homeDirectory = "/home/alerion/";
  home.stateVersion = "20.09";

  targets.genericLinux.enable = true;
  xdg.enable = true;
 
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    vscode
    obsidian
    pavucontrol
    blueberry
    pinta
    podman-desktop
    eog
    gnome-text-editor
    signal-desktop
    vlc
    freetube
    github-desktop
  ];


  imports = [
    ./applications/alacritty.nix
    ./applications/chromium.nix
    ./applications/dunst.nix
    ./applications/fastfetch.nix
    ./applications/firefox.nix
    ./applications/freetube.nix
    ./applications/git.nix
    ./applications/mimeapps.nix
    ./applications/niri.nix
    ./applications/tmux.nix
    ./applications/wofi.nix
    ./applications/btop.nix
    ./applications/signal.nix
    ./applications/audio.nix
    ./applications/waybar.nix
  ];

}
