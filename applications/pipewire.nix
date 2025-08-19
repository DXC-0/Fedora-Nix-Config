{ pkgs, ... }:

{

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

  home.file."default-routes" = {
    target = ".local/state/wireplumber/default-routes";
    text = ''
      [default-routes]
      bluez_card.C4_16_88_4E_78_C5:output:headset-output={"channelMap":["FL", "FR"], "channelVolumes":[0.355890, 0.355890], "mute":false, "latencyOffsetNsec":0}
      bluez_card.C4_16_88_4E_78_C5:profile:a2dp-sink=["headset-output"]
    '';
    force = true;
  };


  home.file."stream-properties" = {
    target = ".local/state/wireplumber/stream-properties";
    text = ''
      [stream-properties]
      Audio/Sink:node.name:auto_null={"channelVolumes":[1.000000, 1.000000], "mute":false, "volume":1.000000, "channelMap":["FL", "FR"]}
      Input/Audio:application.id:org.PulseAudio.pavucontrol={"channelMap":["MONO"], "volume":1.000000, "channelVolumes":[1.000000], "mute":false}
      Input/Audio:application.name:WEBRTC\\sVoiceEngine={"mute":false, "channelMap":["MONO"], "channelVolumes":[1.000000], "volume":1.000000}
      Input/Audio:application.name:discord_capture={"channelMap":["FL", "FR"], "volume":1.000000, "channelVolumes":[1.000000, 1.000000], "mute":false}
      Output/Audio:application.name:Chromium={"mute":false, "channelMap":["FL", "FR"], "channelVolumes":[3.548132, 3.548132], "volume":1.000000}
      Output/Audio:application.name:Firefox={"mute":false, "channelVolumes":[1.000000, 1.000000], "volume":1.000000, "channelMap":["FL", "FR"]}
      Output/Audio:application.name:WEBRTC\\sVoiceEngine={"mute":false, "channelMap":["FL", "FR"], "channelVolumes":[3.548132, 3.548132], "volume":1.000000}
      Output/Audio:media.role:Notification={"channelMap":["MONO"], "channelVolumes":[1.000000], "mute":false}
    '';
    force = true ;
  };

}