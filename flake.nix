{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };

  outputs = {nixpkgs, ...}: let
    pkgs = import nixpkgs {system = "x86_64-linux";};
  in {
    packages.x86_64-linux = rec {
      hello_world = pkgs.callPackage ./pkgs/c {};
      dotnet_hello_world = pkgs.callPackage ./pkgs/dotnet {};
      rust_hello_world = pkgs.callPackage ./pkgs/rust {};
      go_hello_world = pkgs.callPackage ./pkgs/go {};
      wrapper_hello_world = pkgs.callPackage ./pkgs/wrapper {inherit hello_world;};
    };
  };
}
