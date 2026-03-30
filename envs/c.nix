_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.c = pkgs.mkShell {
        packages = [
          pkgs.gcc
          pkgs.gnumake
          pkgs.cmake
          pkgs.ninja

          pkgs.clang-tools

          pkgs.cppcheck
          pkgs.valgrind
          pkgs.gdb

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
