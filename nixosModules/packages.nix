{ config, pkgs, ... }:
{
  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    zed-editor
    brave
    btop
    ghostty
    git
    bat
    tealdeer
    fastfetch
    discord
    home-manager
  ];
}
