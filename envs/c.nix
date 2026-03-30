_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.c = pkgs.mkShell.override { stdenv = pkgs.gccStdenv; } {
        packages = [
          # build tools
          pkgs.gnumake
          pkgs.cmake
          pkgs.ninja

          # linting and formatting tools
          pkgs.clang-tools
          pkgs.cppcheck

          # debugging tools
          pkgs.valgrind
          pkgs.gdb

          # additional tools
          pkgs.bear
        ];

        nativeBuildInputs = [
          pkgs.pkg-config
        ];

        shellHook = ''
          gcc --version
        '';
      };
    };
}
