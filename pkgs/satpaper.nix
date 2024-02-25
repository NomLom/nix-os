# pkgs/satpaper.nix
{
  stdenv,
  fetchurl,
  lib

}:
stdenv.mkDerivation rec {
  pname = "satpaper";
  version = "0.6.0";

  src = fetchurl {
    url = "https://github.com/Colonial-Dev/satpaper/releases/download/${version}/satpaper-x86_64-unknown-linux-musl";
    sha256 = "Z4Dc2/g7AcvLMme7dnnQgXPIrR9AImHXhqwWr2NHSNg=";
  };

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    install -Dm755 $src $out/bin/satpaper
  '';

  meta = {
    description = "Satpaper - dynamic wallpapers for your desktop";
    homepage = "https://github.com/Colonial-Dev/satpaper";
    license = lib.licenses.mit;
  };
}
