{ pkgs, ... }:

{
  home.file.".config/niri/scripts/audio.sh" = {
    text = ''
      #!/bin/bash

      sleep 5
      wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.4
      wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 0.7
    '';
    executable = true;
  };
}