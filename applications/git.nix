{ pkgs, ... }:

{

  programs.git = {
    enable = true;

    userName = "DXC-0";
    userEmail = "thecyberarcher@protonmail.ch";

    extraConfig = {
      pull.rebase = true;
      init.defaultBranch = "main";
    };
  };

}