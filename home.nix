{ pkgs, ... }:


{

##### GLOBAL CONFIGURATION #####

  home.username = "alerion";
  home.homeDirectory = "/home/alerion/";
  home.stateVersion = "20.09";

  targets.genericLinux.enable = true;
  xdg.enable = true;


  home.packages = with pkgs; [
    vscode
    pavucontrol
    blueberry
    pinta
    podman-desktop
    eog
    gnome-text-editor
    signal-desktop
    vlc
    freetube
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
    ./applications/signal.nix
    ./applications/pipewire.nix
  ];

}
