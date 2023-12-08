{...}: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    autocd = true;

    shellAliases = {
      update = "sudo nixos rebuild switch";
      hupdate = "home-manager switch && git add ~/.dotfiles/home-manager && git commit -m '' && git push";
    };
    
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "af-magic";
    };
  };
}
