{ pkgs, ... }:

{
  imports = [ <home-manager/nixos> ];

  home-manager.users.ringlings = {
    gtk = {
      enable = true;
      theme = {
        name = "Catppuccin-Mocha-Mauve-Dark";
        package = pkgs.catppuccin-gtk.override {
          accents = [ "mauve" ];
          variant = "mocha";
        };
      };
    };
  };
}