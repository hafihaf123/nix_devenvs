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

          # debugger
          pkgs.gdb

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
          export LD_LIBRARY_PATH="${
            pkgs.lib.makeLibraryPath [
              pkgs.libsecret
              pkgs.glib
            ]
          }:$LD_LIBRARY_PATH"
          export RUST_SRC_PATH="${pkgs.rustPlatform.rustLibSrc}"
          rustc --version
        '';
      };
    };
}
