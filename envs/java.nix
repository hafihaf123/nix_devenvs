_: {
  perSystem =
    { pkgs, ... }:
    let
      jdk = pkgs.temurin-bin-21;
    in
    {
      devShells.java = pkgs.mkShell.override { stdenv = pkgs.stdenvNoCC; } {
        packages = [
          jdk

          # build tools
          pkgs.gradle
          pkgs.maven

          # LSP
          pkgs.jdt-language-server

          # formatter
          pkgs.google-java-format
        ];

        env = {
          JAVA_HOME = "${jdk.home}";
        };

        shellHook = ''
          java --version
        '';
      };
    };
}
