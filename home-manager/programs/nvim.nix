{pkgs, ...}: {
  home.file."nvim" = {
    source = ./nvim;
    target = ".config/nvim";
    recursive = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    withNodeJs = true;
    withPython3 = true;
    
    extraPackages = with pkgs; [
      fzf
      nodePackages_latest.coc-tsserver
    ];

    plugins = with pkgs.vimPlugins; [
      chadtree
      rose-pine
      nvim-lspconfig
      nvim-cmp
    ];
  };
}
