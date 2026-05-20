_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.rust = pkgs.mkShell {
        packages = [
          # compiler
          pkgs.rustc

          # package manager
          pkgs.cargo

          # linters, formatters
          pkgs.rustfmt
          pkgs.clippy

          # LSP
          pkgs.rust-analyzer

          # additional tools
          pkgs.cargo-nextest
        ];

        nativeBuildInputs = [
          pkgs.pkg-config
        ];

        buildInputs = [
          pkgs.libsecret
          pkgs.glib
        ];

        shellHook = ''
          rustc --version
        '';
      };
    };
}
