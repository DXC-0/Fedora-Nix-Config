{ pkgs, ... }:

{

programs.freetube = {
  enable = true;
  settings = {
    allowDashAv1Formats = true;
    checkForUpdates     = true;
    defaultQuality      = "2160";
    baseTheme           = "catppuccinMocha";
    };
};

}