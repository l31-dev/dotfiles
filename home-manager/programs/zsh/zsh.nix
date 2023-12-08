{ config, pkgs, lib, ... }: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    autocd = true;

    history = {
      expireDuplicatesFirst = true;
      ignoreDups = true;
      ignoreSpace = true;
      save = 20000;
      size = 20000;
    };

    shellAliases = {
      ll = "eza -l";
      update = "sudo nixos-rebuild switch";
      ls = "eza --icons";
    };

		oh-my-zsh = {
    	enable = true;
    	plugins = [
				"git"
				"node"
			];
    	theme = "robbyrussell";
  	};
  };
}
