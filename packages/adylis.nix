{ config, pkgs, ...}:

# Unstable package setup
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {
  environment.systemPackages = with pkgs; [
    jdk17
    prismlauncher
    jetbrains.idea-community
  ];
}