{ config, pkgs, ... }:
{
  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vivaldi
    vscode
    ghostty
    git
    tealdeer
    fastfetch
    discord
    wget
    neovim
    btop
    obsidian
    noto-fonts-cjk-sans 
    noto-fonts-cjk-serif
  ];
}
