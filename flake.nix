{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/23.11";
    typst-flake.url = "github:typst/typst?ref=v0.11.0-rc1";
  };

  outputs = { self, nixpkgs, typst-flake }:
    let
      #system = "x86_64-linux";
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in
    {

      devShells.${system} = {
        default = pkgs.mkShell {
          packages = with pkgs; [
            typst-flake.packages.${system}.default
          ];
        };
      };

    };
}
