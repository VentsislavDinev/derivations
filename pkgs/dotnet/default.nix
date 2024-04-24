#if u want add addiotional packahge use , and package name.
# {stdenv, dotnet-sdk_8}
{
  stdenv,
  dotnet-sdk,
}:
stdenv.mkDerivation {
  name = "hello";
  src = ../../src;

  nativeBuild = [
    dotnet-sdk
  ];

  buildPhase = ''
    ls -la
    dotnet build
  '';
  installPhase = ''
    mkdir -p $out/bin/Debug/net6.0
    cp ./hello-world $out/bin/Debug/net6.0
  '';

  meta = {
    mainProgram = "hello-world";
  };
}
