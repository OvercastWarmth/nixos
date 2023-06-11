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

    # Communication
    (
      unstable.discord.override {
        withVencord = true;
        # withOpenASAR = true;
      }
    )
    mumble
    murmur

    # Gnome
    gnome.gnome-themes-extra
    gnome.gnome-tweaks
    gnomeExtensions.appindicator

    # Other
    cider
    vivaldi
  ];
}