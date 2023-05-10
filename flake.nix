{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    devenv.url = "github:cachix/devenv";
    parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {parts, ...}:
    parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.devenv.flakeModule
      ];
      systems = ["aarch64-darwin" "x86_64-darwin" "x86_64-linux"];

      perSystem = {
        config,
        pkgs,
        ...
      }: {
        devenv.shells.default = {
          packages = [
            pkgs.statix
            pkgs.alejandra
          ];

          languages.javascript.enable = true;
        };

        formatter = pkgs.alejandra;
      };
    };
}
