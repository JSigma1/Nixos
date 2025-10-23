{ config, pkgs, ... }:
{
  # Set your time zone.
  time.timeZone = "Asia/Bangkok";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "th_TH.UTF-8";
    LC_IDENTIFICATION = "th_TH.UTF-8";
    LC_MEASUREMENT = "th_TH.UTF-8";
    LC_MONETARY = "th_TH.UTF-8";
    LC_NAME = "th_TH.UTF-8";
    LC_NUMERIC = "th_TH.UTF-8";
    LC_PAPER = "th_TH.UTF-8";
    LC_TELEPHONE = "th_TH.UTF-8";
    LC_TIME = "th_TH.UTF-8";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jigsaw = {
    isNormalUser = true;
    description = "jigsaw";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
   };

  #Auto garbage collection
  nix.gc = {
     automatic = true;
     dates = "weekly";
     options = "--delete-older-than 14d";
   };

  #experimental-feature
  nix.settings.experimental-features = ["nix-command" "flakes"];

}
