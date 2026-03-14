# My Centralized Dev Environments

This repository contains my master Nix flake for all local development
environments. It uses flake-parts for clean architecture routing but relies on
explicit imports to avoid "magic" file loading.

## How to use in a project

Do not copy this flake into your projects. Instead, use `direnv`.
Navigate to your project folder and run:

```shell
echo "use flake ~/path/to/this/repo#<language>" > .envrc
direnv allow
```

## Adding a New Language Environment

1. Create a new file in the `envs/` directory (e.g., `envs/rust.nix`).

2. Copy and paste the template below.

3. Open `flake.nix` and add `./envs/go.nix` to the `imports = [ ... ]` list.

### The Template

```nix
{ ... }:
{
  perSystem = { pkgs, ... }: {

    devShells.<language> =

      # If you DO need gcc/clang (e.g., for Rust or C), change this to pkgs.mkShell
      pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {

        # PACKAGES: Standalone executables and CLI tools
        packages = [
          # pkgs.<tool>
        ];

        # NATIVE BUILD INPUTS: Tools needed at build time
        nativeBuildInputs = [
          # pkgs.pkg-config
        ];

        # BUILD INPUTS: Shared C/C++ libraries your code links against
        buildInputs = [
          # pkgs.openssl
        ];

        # Optional bash script that runs when the shell starts
        shellHook = ''
          echo "Environment loaded!"
        '';
      };
  };
}
```

## Extending Master Environments

When you want to use a master environment (like Python or Rust) in a specific
project, but you need to add specialized tools (like PostgreSQL), you can use
the `inputsFrom` directive.

This is the cleanest and most native way in Nix to say: **"Use that environment,
but add this."**

### The Minimal Template

Copy this `flake.nix` into your specialized project directory.

```nix
{
  description = "Project-specific environment extension";

  # 1. Point to your master repository
  inputs.master.url = "path:/home/yourusername/nix-envs";

  outputs = { master, ... }: {

    # Loop over whatever systems your master flake already supports
    devShells = builtins.mapAttrs (system: shells:

      # Borrow the exact package cache from the master flake
      let pkgs = master.inputs.nixpkgs.legacyPackages.${system};
      in {

        default = pkgs.mkShell {

          # --- THE MAGIC DIRECTIVE ---
          # Inherit ALL tools, compilers, and libraries from the master Python shell
          inputsFrom = [ shells.python ];

          # --- YOUR ADDITIONS ---
          # Just list the extra things this specific project needs
          packages = [
            pkgs.postgresql
            pkgs.pgcli
          ];

        };

      }
    ) master.devShells;
  };
}
```

### How to Use It

1. Create a `flake.nix` in your specific project folder and paste the template above.
2. Change `shells.python` to whatever base language you need (e.g., `shells.rust`
   , `shells.go`).
3. Add your project-specific packages to the `packages = [ ... ]` list.
4. Track the file with Git so Nix can see it: `git init && git add flake.nix`.
5. Run `echo "use flake" > .envrc` and then `direnv allow`.

_Note: Because this flake defines a `default` shell, you don't need to specify
the environment name in direnv. Just `use flake` is enough to instantly load
your customized environment!_
