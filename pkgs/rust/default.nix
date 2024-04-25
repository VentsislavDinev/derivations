#if u want add addiotional packahge use , and package name.
# {stdenv, dotnet-sdk_8}
{
  stdenv,
  pkg-config,
  cargo,
  rustc,
}:
stdenv.mkDerivation {
  name = "rust-hello";
  src = ../../src/rust;
  buildPhase = ''
    rustc ./hello.rs
  '';

  nativeBuildInputs = [
    rustc
    pkg-config
    cargo
  ];

  installPhase = ''
    mkdir -p $out/bin
    cp ./hello $out/bin
  '';
  meta = {
    mainProgram = "rust-hello-world";
  };
}
