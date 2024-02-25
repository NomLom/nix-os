{
  config,
  pkgs,
  ...
}:{

  programs.steam.enable = true;
  programs.steam.remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
  programs.steam.dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server

}
