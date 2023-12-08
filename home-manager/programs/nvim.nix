{pkgs, home, ...}: {
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      chadtree
      coc-nvim
    ];
  };
}
