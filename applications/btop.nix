{ pkgs, ... }:

{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "phoenix-night"; 
      update_ms = 100;
      use_gpu = true;
      show_gpu = true;
    };
  };
}
