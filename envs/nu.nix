_: {
  perSystem = { pkgs, ... }: {
    devShells.nu = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
      packages = [
        pkgs.nufmt
      ];

      shellHook = ''
        echo "Nu Development Environment loaded!"
      '';
    };
  };
}
