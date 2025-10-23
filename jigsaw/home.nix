{ config, pkgs, inputs, ...}:

{
  home.username = "jigsaw";
  home.homeDirectory = "/home/jigsaw";

  home.packages = with pkgs;[

  ];

  programs.home-manager.enable = true;

  home.stateVersion = "25.05";

  imports = [
    ../homeManagerModules/cliPrograms/git.nix
  ];

}
