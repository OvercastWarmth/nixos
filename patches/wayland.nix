{ config, ...}:

{
  # Electron Application Patches
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1"; # Most Electron Applications
    USE_WAYLAND = "1"; # ArmCord
  };
}