{
  stdenv,
  go,
}:
stdenv.mkDerivation {
  name = "go-hello-world";
  src = ../../src/go;
  buildPhase = ''
    export HOME=/build
    go build ./hello-world.go
  '';

  nativeBuildInputs = [
    go
  ];

  installPhase = ''
    #mkdir -p $out/bin
    #cp ./hello-world  $out/bin/go-hello-world
    install -Dm755 ./hello-world "$out"/bin/go-hello-world
  '';
  meta = {
    mainProgram = "go-hello-world";
  };
}
