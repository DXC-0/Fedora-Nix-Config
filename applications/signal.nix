{ config, pkgs, ... }:

{
  home.file."config/Signal/Preferences" = {
    target = ".config/Signal/Preferences";
    text = ''
      {
        "browser": {
          "enable_spellchecking": true
        },
        "electron": {
          "media": {
            "device_id_salt": "20DB6D6C87607BF6CD31D541D24E18F4"
          }
        },
        "partition": {
          "per_host_zoom_levels": {
            "11938672958272128711": {}
          }
        },
        "spellcheck": {
          "dictionaries": ["fr-FR", "fr"],
          "dictionary": ""
        }
      }
    '';
    force = true;
  };
}
