{ nix }:

nix.stdenv.mkDerivation {

  pname="nix-fossil-fetcher";

  version="0.1.0";

  src = ./.;

  buildInputs = [ nix.dev ] ++ nix.buildInputs;

  preBuild=''
    export MAKEFLAGS="$MAKEFLAGS -j$NIX_BUILD_CORES"
  '';

  installPhase=''
    mkdir -pv $out/bin
    cp -v *.so $out/bin
  '';

}
