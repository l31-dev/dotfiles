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
      gopls
    ];

    plugins = with pkgs.vimPlugins; [
      catppuccin-nvim
      nerdtree
      telescope-nvim
      vim-devicons
      delimitMate
      coc-emmet
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

          "go" = {
            "command" = "gopls";
            "rootPatterns" = [ "go.mod" ];
            "trace.server" = "verbose";
            "filetypes" = [ "go" ];
          };

        };
      };
    };
  };
}
