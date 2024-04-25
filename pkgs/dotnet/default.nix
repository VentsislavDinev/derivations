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
    dotnet run
    cd bin
  '';
  installPhase = ''
    mkdir -p $out
  '';

  meta = {
    mainProgram = "dotnet-hello-world";
  };
}
