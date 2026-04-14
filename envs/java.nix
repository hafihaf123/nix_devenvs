_: {
  perSystem =
    { pkgs, ... }:
    {
      devShells.java = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
        packages = [
          pkgs.javaPackages.compiler.temurin-bin.jdk-21

          # build tools
          pkgs.gradle
          pkgs.maven

          # LSP
          pkgs.jdt-language-server

          # formatter
          pkgs.google-java-format
        ];

        env = {
          JAVA_HOME = "${pkgs.jdk21.home}";
        };

        shellHook = ''
          java --version
        '';
      };
    };
}
