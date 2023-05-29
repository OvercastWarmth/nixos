{ config, pkgs, ...}:

{
  imports = [
    ../../packages/global.nix
    ../../packages/limurai.nix
  ];

  networking.hostName = "Limurai";
}