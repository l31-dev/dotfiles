{ ... }: {
  programs.zsh = {
    enableAutosuggestions = true;

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake ~/.dotfiles#default";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "nodejs" ];
      theme = "robbyrussell";
    };
  };
}
