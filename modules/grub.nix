{ config, pkgs, ... }:

{
  boot.loader = {
    grub = {
      enable = true;
      device = "nodev";
      efiInstallAsRemovable = true;
      efiSupport = true;
      useOSProber = true;
    };
    timeout = 60; 
  };

  environment.systemPackages = with pkgs; [
    os-prober
  ];
}
