{ lib, stdenv, fetchurl, zstd }:

stdenv.mkDerivation rec {
  pname = "warp-terminal";
  version = "0.2024.02.20.08.01.stable_02-1";

  src = fetchurl {
    url = "https://releases.warp.dev/stable/v${version}/warp-terminal-${version}-x86_64.pkg.tar.zst";
    hash = "sha256-0000000000000000000000000000000000000000000000000000"; # Update with actual hash
  };

  nativeBuildInputs = [ zstd ];

  # Adjust if the archive contains more than just a binary (e.g., resources)
  unpackPhase = "unzstd -d $src -o ${pname}-${version}.tar";
  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out/bin
    tar -xf ${pname}-${version}.tar -C $out/bin
    # Adjust based on the actual structure of the tarball and desired installation layout
  '';

  meta = with lib; {
    description = "Rust-based terminal";
    homepage = "https://www.warp.dev";
    license = licenses.unfree; # Verify and adjust as necessary
    platforms = platforms.linux;
    maintainers = with maintainers; [ ]; # Add your maintainer handle if you have one
  };
}

