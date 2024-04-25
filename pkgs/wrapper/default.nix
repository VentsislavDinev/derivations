{
  stdenv,
  lib,
  hello_world,
}:
stdenv.mkDerivation {
  name = "test";
  dontUnpack = true;
  installPhase = ''
    ls -la
    mkdir -p $out/bin
    cp ${lib.getExe hello_world}  $out/bin/hello_world
  '';
}
