{ config, pkgs, ... }:

{

  home.username = "ghosty";
  home.homeDirectory = "/home/ghosty";
  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    #hyprpaper
    pavucontrol
  ];

  services.hyprpaper = {
  enable = true;
  settings = {
    preload = [
      "~/images/wallpapers/wallpaper.png"
    ];
    wallpaper = [
      # By display
      # {
      #   monitor = "DP-2";
      #   path = "~/wallpapers/wallpaper2.jpg";
      # }
      # By default/fallback
      {
        monitor = "";
        path = "~/images/wallpapers/wallpaper.png"; 
      }
    ];
  };
};

  programs.home-manager.enable = true;
}
