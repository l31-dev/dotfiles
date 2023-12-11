{ pkgs, ... }: {
  home.username = "trail";
  home.homeDirectory = "/home/trail";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  nixpkgs.config = {
    allowUnfree = true;
  };

  imports = [
    ./programs/neovim
    ./programs/git.nix
    ./programs/zsh.nix
    ./programs/firefox.nix
    ./programs/theming.nix
    ./programs/kitty.nix
  ];

  home.packages = with pkgs; [
    discord
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
    kitty
  ];

  home.file = { };

  programs.home-manager.enable = true;
}
