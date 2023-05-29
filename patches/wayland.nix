{ config, ...}:

{
  # Electron Application Patches
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.USE_WAYLAND = "1"; # Arm corb
}