{ config, pkgs, ... }: {

  home.username = "trail";
  home.homeDirectory = "/home/trail";

  home.stateVersion = "23.11";

  nixpkgs.config = {
    allowUnfree = true;
  };

  imports = [
    ./programs/kitty/kitty.nix
    ./programs/zsh/zsh.nix
    ./programs/nvim.nix
    ./programs/git/git.nix
  ];

  home.sessionVariables.TERMINAL = "kitty";

	home.packages = with pkgs; [
		# add packages for my profile here
		simplescreenrecorder
    notion-app-enhanced
    nodejs
  ];

  programs.home-manager.enable = true;

}
