#if u want add addiotional packahge use , and package name.
# {stdenv, dotnet-sdk_8}
{
  stdenv,
  dotnet-sdk,
}:
stdenv.mkDerivation {
  name = "dotnet-hello-world";
  src = ../../src/dotnet;

  nativeBuildInputs = [
    dotnet-sdk
  ];

  buildPhase = ''
    ls -la
    dotnet run
    ls -la
    cd bin
  '';
  installPhase = ''
    mkdir -p $out
    ls -la
  '';

  meta = {
    mainProgram = "dotnet-hello-world";
  };
}
