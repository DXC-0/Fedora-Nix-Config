{ pkgs, ... }:

{

home.file.".config/waybar/config.jsonc" = {
    force = true; 
    text = ''
    // -*- mode: jsonc -*-
    {
      "layer": "top",
      "height": 20,
      "spacing": 0,

      "modules-left": [
        "custom/fedora",
        "custom/nix"
      ],
      "modules-center": [
        "mpris",
        "clock",
        "cpu",
        "memory",
        "temperature",
        "systemd-failed-units"
      ],
      "modules-right": [
        "pulseaudio",
        "bluetooth",
        "custom/power"
      ],

      "niri/window": {
        "format": "{}",
        "rewrite": {
          "(.*) - Mozilla Firefox": "🌎 $1",
          "(.*) - zsh": "> [$1]"
        }
      },

      "custom/nix": {
        "format": "    ",
        "tooltip": false,
        "on-click": "exec alacritty -e nix-channel --update && home-manager switch"
      },

      "custom/fedora": {
        "format": "    ",
        "tooltip": false,
        "on-click": "exec alacritty -e sudo dnf update && sudo dnf upgrade"
      },

      "clock": {
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "{:%Y-%m-%d}"
      },

      "cpu": {
        "format": "{usage}% ",
        "tooltip": false
      },

      "memory": {
        "format": "{}% "
      },

      "temperature": {
        "thermal-zone": 2,
        "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
        "critical-threshold": 80,
        "format": "{temperatureC}°C {icon}",
        "format-icons": ["", "", ""]
      },

      "backlight": {
        "format": "{percent}% {icon}",
        "format-icons": ["🌑", "🌘", "🌗", "🌖", "🌕"]
      },

      "battery": {
        "states": {
          "warning": 30,
          "critical": 15
        },
        "format": "{capacity}% {icon}",
        "format-full": "{capacity}% {icon}",
        "format-charging": "{capacity}% ",
        "format-plugged": "{capacity}% ",
        "format-alt": "{time} {icon}",
        "format-icons": ["", "", "", "", ""]
      },

      "battery#bat2": {
        "bat": "BAT2"
      },

      "power-profiles-daemon": {
        "format": "{icon}",
        "tooltip-format": "Power profile: {profile}\nDriver: {driver}",
        "tooltip": true,
        "format-icons": {
          "default": "",
          "performance": "",
          "balanced": "",
          "power-saver": ""
        }
      },

      "network": {
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": "{ipaddr}/{cidr} ",
        "tooltip-format": "{ifname} via {gwaddr} ",
        "format-linked": "{ifname} (No IP) ",
        "format-disconnected": "Disconnected ⚠",
        "format-alt": "{ifname}: {ipaddr}/{cidr}"
      },

      "pulseaudio": {
        "format": "{volume}% {icon} {format_source}",
        "format-bluetooth": "{volume}% {icon} {format_source}",
        "format-bluetooth-muted": " {icon} {format_source}",
        "format-muted": " {format_source}",
        "format-source": "{volume}% ",
        "format-source-muted": "",
        "format-icons": {
          "headphone": "",
          "hands-free": "",
          "headset": "",
          "phone": "",
          "portable": "",
          "car": "",
          "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
      },

      "bluetooth": {
        "format": " {status}",
        "format-disabled": "",
        "format-connected": " {num_connections} connected",
        "tooltip-format": "{controller_alias}\t{controller_address}",
        "tooltip-format-connected": "{controller_alias}\t{controller_address}\n\n{device_enumerate}",
        "tooltip-format-enumerate-connected": "{device_alias}\t{device_address}",
        "on-click": "blueberry"
      },

      "mpris": {
        "format": "  {status_icon}  {dynamic}",
        "interval": 1,
        "dynamic-len": 40,
        "status-icons": {
          "playing": "▶",
          "paused": "⏸",
          "stopped": ""
        },
        "dynamic-order": ["title", "artist", "album"]
      },

      "custom/power": {
        "format": "⏻ ",
        "tooltip": false,
        "on-click": "shutdown 0"
      },

      "systemd-failed-units": {
        "hide-on-ok": false,
        "format": "✗ {nr_failed}",
        "format-ok": "✓",
        "system": true,
        "user": false
      }
    }
  '';
};

  home.file.".config/waybar/style.css" = {
    force = true; 
    text = ''
    * {
        font-family: 'Noto Sans Mono', 'Font Awesome 6 Free', 'Font Awesome 6 Brands', monospace;
        font-size: 13px;
    }

    window#waybar {
        background-color: black;
        color: #ffffff;
        transition-property: background-color;
        transition-duration: .5s;
    }

    window#waybar.hidden {
        opacity: 0.2;
    }

    window#waybar.termite {
        background-color: #3F3F3F;
    }

    window#waybar.chromium {
        background-color: #000000;
        border: none;
    }

    button {
        box-shadow: inset 0 -3px transparent;
        border: none;
        border-radius: 0;
    }

    button:hover {
        background: inherit;
        box-shadow: inset 0 -3px #ffffff;
    }

    #pulseaudio:hover {}

    #workspaces button {
        padding: 0 5px;
        background-color: transparent;
        color: #ffffff;
    }

    #workspaces button:hover {
        background: rgba(0, 0, 0, 0.2);
    }

    #workspaces button.focused {
        background-color: #64727D;
        box-shadow: inset 0 -3px #ffffff;
    }

    #workspaces button.urgent {
        background-color: #eb4d4b;
    }

    #mode {
        background-color: #64727D;
        box-shadow: inset 0 -3px #ffffff;
    }

    #clock,
    #battery,
    #cpu,
    #memory,
    #disk,
    #temperature,
    #backlight,
    #network,
    #pulseaudio,
    #wireplumber,
    #custom-media,
    #tray,
    #mode,
    #idle_inhibitor,
    #scratchpad,
    #power-profiles-daemon,
    #mpd {
        padding: 0 10px;
        color: #ffffff;
    }

    #workspaces {
        margin: 0 4px;
    }

    .modules-left > widget:first-child > #workspaces {
        margin-left: 0;
    }

    .modules-right > widget:last-child > #workspaces {
        margin-right: 0;
    }

    #clock {
        font-size: 17px;
        margin-right: 10px;
    }

    #battery {
        background-color: #ffffff;
        color: #000000;
    }

    #battery.charging, #battery.plugged {
        color: #ffffff;
        background-color: #26A65B;
    }

    @keyframes blink {
        to {
            background-color: #ffffff;
            color: #000000;
        }
    }

    #battery.critical:not(.charging) {
        background-color: #f53c3c;
        color: #ffffff;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: steps(12);
        animation-iteration-count: infinite;
        animation-direction: alternate;
    }

    #power-profiles-daemon {
        padding-right: 15px;
    }

    #power-profiles-daemon.performance {
        background-color: #f53c3c;
        color: #ffffff;
    }

    #power-profiles-daemon.balanced {
        background-color: #2980b9;
        color: #ffffff;
    }

    #power-profiles-daemon.power-saver {
        background-color: #2ecc71;
        color: #000000;
    }

    label:focus {
        background-color: #000000;
    }

    #cpu, #memory, #temperature {
        font-size: 16px;
        margin-right: 10px;
    }

    #disk {
        background-color: #964B00;
    }

    #backlight {
        background-color: #90b1b1;
    }

    #network {
        background-color: #2980b9;
    }

    #network.disconnected {
        background-color: #f53c3c;
    }

    #pulseaudio, #pulseaudio.muted {
        font-size: 17px;
    }

    #wireplumber {
        background-color: #fff0f5;
        color: #000000;
    }

    #wireplumber.muted {
        background-color: #f53c3c;
    }

    #custom-media {
        background-color: #66cc99;
        color: #2a5c45;
        min-width: 100px;
    }

    #custom-media.custom-spotify {
        background-color: #66cc99;
    }

    #custom-media.custom-vlc {
        background-color: #ffa000;
    }

    #temperature.critical {
        background-color: #eb4d4b;
    }

    #tray {
        background-color: #2980b9;
    }

    #tray > .passive {
        -gtk-icon-effect: dim;
    }

    #tray > .needs-attention {
        -gtk-icon-effect: highlight;
        background-color: #eb4d4b;
    }

    #idle_inhibitor {
        background-color: #2d3436;
    }

    #idle_inhibitor.activated {
        background-color: #ecf0f1;
        color: #2d3436;
    }

    #mpd {
        background-color: #66cc99;
        color: #2a5c45;
    }

    #mpd.disconnected {
        background-color: #f53c3c;
    }

    #mpd.stopped {
        background-color: #90b1b1;
    }

    #mpd.paused {
        background-color: #51a37a;
    }

    #language {
        background: #00b093;
        color: #740864;
        padding: 0 5px;
        margin: 0 5px;
        min-width: 16px;
    }

    #keyboard-state {
        background: #97e1ad;
        color: #000000;
        padding: 0 0px;
        margin: 0 5px;
        min-width: 16px;
    }

    #keyboard-state > label {
        padding: 0 5px;
    }

    #keyboard-state > label.locked {
        background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad {
        background: rgba(0, 0, 0, 0.2);
    }

    #scratchpad.empty {
        background-color: transparent;
    }

    #privacy {
        padding: 0;
    }

    #privacy-item {
        padding: 0 5px;
        color: white;
    }

    #privacy-item.screenshare {
        background-color: #cf5700;
    }

    #privacy-item.audio-in {
        background-color: #1ca000;
    }

    #privacy-item.audio-out {
        background-color: #0069d4;
    }

    #custom-fedora {
        font-size: 18px;
        background-image: url('/home/alerion/.config/waybar/assets/fedora.svg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: contain;
        margin-top: 3px;
        margin-left: 20px;
        margin-bottom: 10px;
    }

    #custom-nix {
        font-size: 23px;
        background-image: url('/home/alerion/.config/waybar/assets/nix.png');
        background-position: center;
        background-repeat: no-repeat;
        background-size: contain;
        margin-top: 3px;
        margin-right: 3px;
        margin-bottom: 10px;
        margin-left: -5px;
    }

    #window {
        font-size: 5px;
        margin-left: 40px;
    }

    #mpris {
        font-size: 16px;
        padding-left: 20px;
        padding-right: 20px;
    }

    #bluetooth {
        font-size: 18px;
        margin-right: 20px;
    }

    #systemd-failed-units {
        font-size: 17px;
        margin-left: 10px;
    }

    #custom-power {
        font-size: 18px;
        margin-right: 20px;
    }
  '';
  };
}
