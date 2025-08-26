### INSTALLATION METHOD

This script installs the Windows Manager Niri, containerization tools, flatpak and Nvidia drivers. \
The Nix part will reproduce the user environment and install applications dotfiles.

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

```home-manager switch```

or alternatively : 

```nix-shell -p home-manager --run "home-manager switch"```

To install flatpak application : 

```flatpak install "application"```

To update flatpak packages : 

```sudo flatpak update && sudo flatpak upgrade && sudo flatpak remove --unused```

<br/>

[![image2.png](https://i.postimg.cc/bvZdtckJ/image2.png)](https://postimg.cc/v1dGJKPF)

---

### WHY FEDORA ? 

I spent years with Archlinux, which was a good experience. It's a distribution I love and that gives control over the system, but I grew tired of its rolling release model. The packages are too close to upstream for my liking, and there's no dependency isolation. It's a traditional system, very good, but it tends to crash too often for my liking. With Fedora, I have Secureboot and SELinux. The reliability of the packages—many big open source names come from RedHat—a world-renowned company backed by IBM—gives me complete confidence in the reliability of the distribution.

### NIX PACKAGE MANAGER

I like my system to be clean and I must have up-to-date software. I use Nix on top of Fedora, all applications come from the unstable channel. Dependencies are isolated, I can rollback in a few moments, it is the most powerful tool I have seen on Linux. I don't want to manage everything with Nix, Fedora manages the drivers, "core" packages and the Windows manager, elements that must not move.

### HOME MANAGER FOR DOTFILES

With Home Manager, I can declare the configurations of my Nix applications, apply them, and roll back if necessary thanks to its derivation system. This way, you always have a consistent system at the user level. The application's strength is that it even allows you to manage the dotfiles of your DNF applications, making your entire configuration rebuildable in seconds.

### FLATPAK AND PODMAN

I'm sticking with Flatpak (it's a universal containerized application distribution model), which I use for proprietary applications that also need to be updated as soon as they're available. Publishers publish, so it makes things faster.
Besides that I use podman and distrobox, it's a powerful combo that also allows me to have the quantity of software available on Archlinux and the AUR.

<br/>


[![Fedora-Xnix.png](https://i.postimg.cc/Dw8k34st/Fedora-Xnix.png)](https://postimg.cc/XrSDwJs8)



