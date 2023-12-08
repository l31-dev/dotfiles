{pkgs, home, lib, ...}: {
  home.sessionVariables.EDITOR = "nvim";

  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      fzf
    ];

    plugins = with pkgs.vimPlugins; [
      chadtree
      coc-nvim
      telescope-nvim
    ];

    extraConfig = lib.fileContents ./nvim/init.vim;
  };
}
