{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix
    ../modules/grub.nix
    ../packages/adylis.nix
    ../packages/global.nix
    ../patches/nvidia.nix
    ../patches/wayland.nix
  ];

  networking.hostName = "Adylis";
}