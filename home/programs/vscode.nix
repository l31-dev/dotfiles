{ pkgs, ... }: {
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      yzhang.markdown-all-in-one
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      golang.go
    ];

    userSettings = {
      "workbench.colorTheme" = "Catppuccin Mocha";
      "workbench.iconTheme" = "catppuccin-mocha";
    };
  };
}
