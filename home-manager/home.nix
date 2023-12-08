{ config, pkgs, ... }:

{
  home.username = "trail";
  home.homeDirectory = "/home/trail";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/nvim.nix
  ];

  home.packages = [
  ];

  programs.home-manager.enable = true;
}
