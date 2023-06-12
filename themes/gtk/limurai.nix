{ pkgs, ... }:

{
  imports = [ <home-manager/nixos> ];

  home-manager.users.ringlings = {
    gtk = {
      enable = true;
      theme = {
        name = "Catppuccin-Latte-Pink-Light";
        package = pkgs.catppuccin-gtk.override {
          accents = [ "pink" ];
          variant = "latte";
        };
      };
    };
  };
}