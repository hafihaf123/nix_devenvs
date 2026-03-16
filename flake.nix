{
  description = "Personal Master Development Environments Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # module framework for clean, extensible multi-architecture support
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {

      # EXPLICIT IMPORTS
      imports = [
        ./envs/rust.nix
        ./envs/python.nix
        ./envs/c.nix
      ];

      # SUPPORTED ARCHITECTURES
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      # GLOBAL CONFIGURATION
      perSystem =
        { system, pkgs, ... }:
        {

          # Configure the 'pkgs' instance passed to all your environment files
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
            # Useful for developer tools like Terraform, some LSPs, or proprietary SDKs
            config.allowUnfree = true;
          };

          formatter = pkgs.nixpkgs-fmt;
        };
    };
}
