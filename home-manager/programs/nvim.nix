{pkgs, home, lib, ...}: {
  home.sessionVariables.EDITOR = "nvim";
  xdg.configFile."nvim/coc-settings.json".text = builtins.readFile ./nvim/coc-settings.json;

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      fzf
      rnix-lsp
      tsserver
    ];

    plugins = with pkgs.vimPlugins; [
      chadtree
      coc-nvim
      telescope-nvim
      delimitMate
    ];

    extraConfig = lib.fileContents ./nvim/init.vim;
  };
}
