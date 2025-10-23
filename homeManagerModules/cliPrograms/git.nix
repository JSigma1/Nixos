{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "jigsaw";
      user.email = "phattarawat12cg@gmail.com";
    };
  };
}
