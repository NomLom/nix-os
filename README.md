# nix-os
 os on a stick

1. run 'nix shell nixpkgs#home-manager' to load in home manager.

2. Run sudo nixos-rebuild switch --flake .#hostname to apply your system configuration.
3. Run home-manager switch --flake .#username@hostname to apply your home configuration.
