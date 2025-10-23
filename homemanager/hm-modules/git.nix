{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "jigsaw";
    userEmail = "phattarawat12cg@gmail.com";
  };
}
