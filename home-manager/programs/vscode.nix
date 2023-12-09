{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      golang.go
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
      jnoortheen.nix-ide
      arrterian.nix-env-selector
    ];
    userSettings = {
      "workbench.iconTheme" = "catppuccin-mocha";
      "workbench.colorTheme" = "Catppuccin Mocha";
    };
  };
}
