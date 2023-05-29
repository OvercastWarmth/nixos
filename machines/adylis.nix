{ config, pkgs, ...}:

{
  imports = [
    ../packages/global.nix
    ../packages/adylis.nix
  ];

  networking.hostName = "Adylis";
}