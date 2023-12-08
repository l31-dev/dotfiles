{ config, pkgs, lib, ... }: {
  programs.git = {
    enable = true;
    userName = "trail-l31";
    userEmail = "geloocg@gmail.com";
  };
}
