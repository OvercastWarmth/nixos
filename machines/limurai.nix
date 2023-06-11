{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix
    ../packages/global.nix
    ../packages/limurai.nix
    ../modules/grub.nix
    ../patches/touchscreen.nix
    ../patches/wayland.nix
  ];

  networking.hostName = "Limurai";
}