{ ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      devShells.python = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
        packages = [
          pkgs.python3
          pkgs.uv
          pkgs.ruff
          pkgs.basedpyright
          pkgs.mypy
        ];

        env = {
          UV_PROJECT_ENVIRONMENT = ".venv";
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
