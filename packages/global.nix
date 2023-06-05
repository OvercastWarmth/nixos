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
    vscodium

    # Art
    audacity
    gimp-with-plugins
    obs-studio

    # Gnome Extensions
    gnomeExtensions.appindicator
    gnomeExtensions.dash2dock-lite

    # Other
    armcord
    cider
    mumble
    murmur
  ];
}