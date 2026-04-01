_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.python = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
        packages = [
          # interpreter
          pkgs.python3

          # dependency manager
          pkgs.uv

          # linters and formatters
          pkgs.ruff
          pkgs.basedpyright
          pkgs.mypy
        ];

        env = {
          UV_PROJECT_ENVIRONMENT = ".venv";
          UV_PYTHON = "${pkgs.python3}/bin/python3";
        };

        shellHook = ''
          uv --version

          if [ ! -d ".venv" ]; then
            echo "Creating a new virtual environment with uv..."
            uv venv
          fi
        '';
      };
    };
}
