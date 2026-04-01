_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.node = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
        packages = [
          # runtime
          pkgs.nodejs_25

          # package manager
          pkgs.pnpm

          # LSP
          pkgs.vtsls
        ];

        shellHook = ''
          node --version
          pnpm --version
        '';
      };
    };
}
