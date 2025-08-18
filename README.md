> This repository is used to explain my choices in terms of Linux distribution, the reasons that made me get there, what the scripts do and how to deploy the system. You will find here my "pure" dotfiles which are usable everywhere (all classic Linux distributions, Ubuntu, Arch, Fedora ...) and installer + configuration files which require nix package manager.

### WHY FEDORA ? 

I spent years on Archlinux, I loved the experience, it's a distribution that I love and that leaves you in control, but I got tired of its rolling release model. The packages are too close to the upstream for my taste and there is no dependency isolation. By that I mean that it's a traditional system, very nice, but things tend to break too often for me. I spent some time on Bluefin, the fork of Silverblue, to end up on Fedora Minimal. I want to have Secureboot and SELinux, the reliability of Fedora packages - many big open source names are from RedHat - a world-renowned company and backed by IBM behind it gives me total confidence in the reliability of the distribution.

### NIX PACKAGE MANAGER

### HOME MANAGER FOR DOTFILES

### NIRI WINDOWS MANAGER 

### FLATPAK AND PODMAN



Switch configuration :


```nix-shell -p home-manager --run "home-manager switch"```


Update nix channels :


```nix-channel --update```

