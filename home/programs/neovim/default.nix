{ lib, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    viAlias = true;
    vimAlias = true;

    extraConfig = lib.fileContents ./init.vim;

    extraPackages = with pkgs; [
      nil
      nixpkgs-fmt
    ];

    plugins = with pkgs.vimPlugins; [
      catppuccin-nvim
      nerdtree
      telescope-nvim
      vim-devicons
    ];

    coc = {
      enable = true;
      settings = {
        "suggest.enablePreview" = true;
        "suggest.enablePreselect" = true;
        "coc.preferences.formatOnType" = true;
        "coc.preferences.formatOnSaveFiletypes" = [ "nix" ];
        "languageserver" = {
          "nix" = {
            "command" = "nil";
            "filetypes" = [ "nix" ];
            "settings" = {
              "nil" = {
                "formatting" = {
                  "command" = [ "nixpkgs-fmt" ];
                };
              };
            };
          };
        };
      };
    };
  };
}
