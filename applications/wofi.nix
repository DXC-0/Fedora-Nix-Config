{ config, pkgs, ... }:

{
  home.file.".config/wofi/config".text = ''
    hide_scroll=true
    width=30%
    lines=11
    line_wrap=word
    term=alacritty
    allow_markup=true
    always_parse_args=false
    show_all=true
    print_command=true
    layer=overlay
    allow_images=true
    sort_order=default
    gtk_dark=true
    prompt=
    image_size=35
    display_generic=false
    location=center
    key_expand=Tab
    insensitive=false
    single_click=true
  '';

  home.file.".config/wofi/style.css".text = ''
    * {
      font-family: JetBrainsMono, SpaceMono;
      color: #e5e9f0;
      font-size: 18px;
      /* background: transparent; */
    }

    #window {
      margin: auto;
      padding: 10px;
      border-radius: 25px;
      border: 6px solid rgba(218, 112, 212, 1.0);
      background-color: #151515;
      opacity: 1.0;
    }

    #input {
      padding: 10px;
      margin-bottom: 10px;
      border-radius: 5px;
    }

    #outer-box {
      padding: 20px;
    }

    #img {
      margin-right: 6px;
    }

    #entry {
      padding: 10px;
      border-radius: 10px;
    }

    #entry:selected {
      background-color: rgba(218, 112, 212, 1.0);
    }

    #text {
      margin: 2px;
    }
  '';
}
