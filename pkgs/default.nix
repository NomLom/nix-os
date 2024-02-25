# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example'
{ pkgs ? import <nixpkgs> { } }: rec {
  # example = pkgs.callPackage ./example { };
  warp-terminal = pkgs.callPackage ./warp-terminal.nix { };
  satpaper = pkgs.callPackage ./satpaper.nix { };
}
