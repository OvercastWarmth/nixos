{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix
    ../modules/grub.nix
    ../modules/steam.nix
    ../packages/adylis.nix
    ../packages/global.nix
    ../patches/nvidia.nix
    ../patches/wayland.nix
  ];

  networking.hostName = "Adylis";
}