# This file was autogenerated. Edit the update.ts file instead.
{pkgs ? import <nixpkgs> { inherit system; }, system ? builtins.currentSystem}:

pkgs.stdenv.mkDerivation rec {
  name = "pnpm";
  version = "8.6.11";
  src = pkgs.fetchurl {
    url = "https://registry.npmjs.org/pnpm/-/pnpm-8.6.11.tgz";
    sha512 = "jqknppuj45tDzJsLcLqkAxytBHZXIx9JTYkGNq0/7pSRggpio9wRxTDj4NA2ilOHPlJ5BVjB5Ij5dx65woMi5A==";
  };
  doCheck = true;
  phases = [ "unpackPhase" "installPhase" ];
  installPhase = ''
    mkdir $out
    cp -r * $out
    mv $out/bin/pnpm.cjs $out/bin/pnpm
    mv $out/bin/pnpx.cjs $out/bin/pnpx
    chmod +x $out/bin/{pnpm,pnpx}
  '';
}
