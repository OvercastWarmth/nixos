{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix

    ../modules/grub.nix
    ../modules/home-manager.nix
    # ../modules/noisetorch.nix
    ../modules/steam.nix

    ../packages/adylis.nix
    ../packages/global.nix
    ../patches/nvidia.nix
    ../patches/wayland.nix

    ../themes/gtk/adylis.nix
  ];

  networking.hostName = "Adylis";
}