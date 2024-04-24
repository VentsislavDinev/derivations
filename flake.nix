{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = {nixpkgs, ...}: let
    pkgs = import nixpkgs {system = "x86_64-linux";};
  in {
    packages.x86_64-linux.hello_world = pkgs.callPackage ./pkgs/c {};
    packages.x86_64-linux.dotnet_hello_world = pkgs.callPackage ./pkgs/dotnet {};
    packages.x86_64-linux.rust_hello_world = pkgs.callPackage ./pkgs/rust {};
    packages.x86_64-linux.go_hello_world = pkgs.callPackage ./pkgs/go {};
  };
}
