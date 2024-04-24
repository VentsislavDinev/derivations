#if u want add addiotional packahge use , and package name.
# {stdenv, dotnet-sdk_8}
{
  stdenv,
  go,
}:
stdenv.mkDerivation {
  name = "go-hello";
  src = ../../src/go;
  buildPhase = ''
    ls -la
    go build ./hello-world.go
    ls -la
  '';

  nativeBuildInputs = [
    go
  ];

  installPhase = ''
    ls - la
    sudo mkdir -p $out/bin
    cp ./hello-world
  '';
  meta = {
    mainProgram = "rust-hello-world";
  };
}
