#if u want add addiotional packahge use , and package name.
# {stdenv, dotnet-sdk_8}
{stdenv}:
stdenv.mkDerivation {
  name = "hello";
  src = ../../src/c;
  buildPhase = ''
    gcc ./hello-world.c -o ./hello-world
  '';
  installPhase = ''
    mkdir -p $out/bin
    cp ./hello-world $out/bin
  '';
  meta = {
    mainProgram = "hello-world";
  };
}
