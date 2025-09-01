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
    force = true;
  };

  home.file."default-profile" = {
    target = ".local/state/wireplumber/default-profile";
    text = ''
      [default-profile]
      alsa_card.pci-0000_01_00.1=off
      alsa_card.pci-0000_10_00.6=off
      alsa_card.usb-UGREEN_Camera_UGREEN_Camera_SN0001-02=off
    '';
    force = true;
  };
}
