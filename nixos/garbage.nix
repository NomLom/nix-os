{
  config,
  pkgs,
  ...
}:{
 nix.gc = {
    automatic = true; # Enable automatic garbage collection
    dates = "weekly"; # Set the garbage collection frequency to weekly
    options = "--delete-older-than 14d"; # Remove generations older than 30 days
  };
}
