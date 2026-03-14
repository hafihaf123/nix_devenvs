{ ... }:
{
  perSystem = { pkgs, ... }: {
    devShells.rust =
      pkgs.mkShell {
        packages = [
          pkgs.cargo
          pkgs.rustc
          pkgs.rustfmt
          pkgs.clippy
          pkgs.rust-analyzer
        ];

        nativeBuildInputs = [
          pkgs.pkg-config
        ];

        buildInputs = [
        ];

        shellHook = ''
          rustc --version
        '';
      };
  };
}

