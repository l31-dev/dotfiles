{ config, pkgs, ... }:

{
  home.username = "trail";
  home.homeDirectory = "/home/trail";

  home.stateVersion = "23.11"; # Please read the comment before changing.
  
  fonts.fontconfig.enable = true;
  
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "DroidSansMono" ]; })
    ocs-url steam
  ];

  imports = [
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/nvim.nix
    ./programs/kitty.nix
    ./programs/vscode.nix
  ];
 
  home.sessionVariables = {
    DSHELL="${pkgs.zsh}/bin/zsh";
  };

  programs.home-manager.enable = true;
}
