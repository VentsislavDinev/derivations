{
  stdenv,
  writeShellScriptBin,
}:
stdenv.mkDerivation {
  name = "test";
  src = ./.;
  nativeBuildInputs = [
    (writeShellScriptBin "test-script" "ls -la") # This is a second derivation
  ];
}
