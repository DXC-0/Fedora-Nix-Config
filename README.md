### INSTALLATION METHOD

This script installs the Windows Manager Niri, containerization tools, flatpak and Nvidia drivers. \
The Nix part will reproduce the user environment and install applications.

Install a Fedora Minimal and install git 

```sudo dnf install git```

Clone the repository and run the install.sh script

```
git clone https://github.com/DXC-0/Fedora-Nix-Config/
cd Fedora-Nix-Config
sudo bash install.sh
```

To update the system (Fedora) : 

``` sudo dnf update && sudo dnf upgrade ```

To Update nix channels :

```nix-channel --update```

To add new applications to configuration, edit this file :

``` .config/home-manager/home.nix ```

Rebuild with the new configuration : 

```nix-shell -p home-manager --run "home-manager switch"```

To install flatpak application : 

```flatpak install "application"```

To update flatpak packages : 

```sudo flatpak update && sudo flatpak upgrade && sudo flatpak remove --unused```

<br/>

---

### WHY FEDORA ? 

I spent years on Archlinux, I loved the experience, it's a distribution that I love and that leaves you in control, but I got tired of its rolling release model. The packages are too close to the upstream for my taste and there is no dependency isolation. By that I mean that it's a traditional system, very nice, but things tend to break too often for me. I spent some time on Bluefin, the fork of Silverblue, to end up on Fedora Minimal. I want to have Secureboot and SELinux, the reliability of Fedora packages - many big open source names are from RedHat - a world-renowned company and backed by IBM behind it gives me total confidence in the reliability of the distribution.

### NIX PACKAGE MANAGER

I was told to switch to NixOS, it's a great adventure, I loved building the system, but I had difficulties doing things that are not provided in the Nix framework. It's difficult, for example if you want to build from source, you have a problem, the OS is also not totally imutable as I thought, it did not convince me. I am a big user of Flatpak and OCI containers (podman/docker), I like things to be isolated from the system. Nix package manager allows me to do this, it's such a powerful tool you can't even imagine. I can install as many applications and derivations as I want, all dependencies are managed and isolated from my host system, it's incredible.

### HOME MANAGER FOR DOTFILES

Home-manager is kind of the craziest thing I've seen in the Linux world for a long time. It's much more powerful to have a classic system with Homemanager. I can declare the configurations of my Nix applications, apply them, rollback if necessary with its derivation system. With this, you always have a consistent "user level" system. The highlight of the show is that it even allows you to manage your DNF application dotfiles, which makes your entire configuration rebuildable in a few seconds.

### FLATPAK AND PODMAN

I'm sticking with Flatpak (it's a universal containerized application distribution model), which I use for proprietary applications that also need to be updated as soon as they're available. Publishers publish, so it makes things faster.
Besides that I use podman and distrobox, it's a powerful combo that also allows me to have the quantity of software available on Archlinux and the AUR.

<br/>


[![Fedora-Xnix.png](https://i.postimg.cc/Dw8k34st/Fedora-Xnix.png)](https://postimg.cc/XrSDwJs8)


