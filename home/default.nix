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
    ./programs/vscode.nix
  ];

  home.packages = with pkgs; [
    discord
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
    anydesk
    steam
  ];

  home.file = { };

  home.sessionVariables = {
    SHELL = "${pkgs.zsh}";
  };

  programs.home-manager.enable = true;
}
