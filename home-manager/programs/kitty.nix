{ ... }: {
  programs.kitty = {
    enable = true;
    theme = "Rosé Pine";
    settings = {
      enable_audio_bell = false;
      copy_on_select = "clipboard";
      background_opacity = "0.95";
      background_blur = 1;
      font_family = "DroidSansMono";
	    window_margin_width = 12;
	    window_margin_height = 12;


      # Add the Rosé Pine color scheme here
      color0 = "#26233a";
      color8 = "#6e6a86";

      color1 = "#eb6f92";
      color9 = "#eb6f92";

      color2 = "#31748f";
      color10 = "#31748f";

      color3 = "#f6c177";
      color11 = "#f6c177";

      color4 = "#9ccfd8";
      color12 = "#9ccfd8";

      color5 = "#c4a7e7";
      color13 = "#c4a7e7";

      color6 = "#ebbcba";
      color14 = "#ebbcba";

      color7 = "#e0def4";
      color15 = "#e0def4";
      # End of Rosé Pine color scheme
    };
  };
}
