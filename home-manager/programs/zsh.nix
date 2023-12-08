{...}: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    autocd = true;

    shellAliases = {
      ls = "eza --icons";
    };
    
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "af-magic";
    };
  };
}
