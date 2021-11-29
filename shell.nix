let
  project = import ./default.nix;
in
  project.shellFor {

    packages = ps: with ps; [
      marlowe-dependency-docs
    ];

    withHoogle = true;

    tools = {
      cabal                   = "latest";
      ghcid                   = "latest";
      ghcide                  = "latest";
      haskell-language-server = "latest";
    # hdevtools               = "latest";
      hindent                 = "latest";
      hlint                   = "latest";
      pointfree               = "latest";
    # pointfull               = "latest";
      stylish-haskell         = "latest";
    };

    buildInputs = [ (import <nixpkgs> {}).git ];

    exactDeps = true;

##  shellHook = """
##    hoogle server --host 0.0.0.0 --port 8079
##  """;

  }
