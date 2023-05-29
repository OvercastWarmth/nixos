{ config, pkgs, ...}:

# Unstable package setup
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {

  environment.systemPackages = with pkgs; [
    # Utilities
    direnv
    git
    unstable.vscodium

    # Gnome Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash2dock-lite

    # Other
    unstable.armcord
    unstable.cider
  ];
}