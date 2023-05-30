{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix
    ../packages/global.nix
    ../packages/limurai.nix
    ../patches/wayland.nix
  ];

  networking.hostName = "Limurai";
}