{ config, pkgs, ... }:

{
  home.username = "trail";
  home.homeDirectory = "/home/trail";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "DroidSansMono" ]; })
  ];

  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/nvim.nix
    ./programs/kitty.nix
  ];
  
  programs.home-manager.enable = true;
}
