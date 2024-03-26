{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation rec {
  pname = "site-lschuetze";
  version = "0.1.0";

  src = ./.;

  buildInputs = with pkgs; [
    hugo go
  ];

  buildPhase = ''
    mkdir -p $out
    hugo --destination $out
  '';

  dontInstall = true;
}
