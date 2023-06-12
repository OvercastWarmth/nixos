{ config, pkgs, ...}:

{
  imports = [
    ../configs/storage.nix

    ../packages/global.nix
    ../packages/limurai.nix

    ../modules/grub.nix
    ../modules/home-manager.nix

    ../patches/touchscreen.nix
    ../patches/wayland.nix

    ../themes/gtk/limurai.nix
  ];

  networking.hostName = "Limurai";
}