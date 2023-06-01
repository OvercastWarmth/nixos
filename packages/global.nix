{ config, pkgs, ...}:

# Unstable package setup
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {

  environment.systemPackages = with pkgs; [
    # Utilities
    direnv
    git
    nixos-option

    # Programming
    unstable.vscodium

    # Art
    audacity
    gimp-with-plugins

    # Gnome Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash2dock-lite

    # Other
    unstable.armcord
    unstable.cider
  ];
}