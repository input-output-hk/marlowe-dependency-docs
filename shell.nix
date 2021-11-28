let
  project = import ./default.nix;
in
  project.shellFor {

    packages = ps: with ps; [
      compendium
    ];

    withHoogle = true;

    tools = {
      cabal                   = "latest";
      ghcide                  = "latest";
      haskell-language-server = "latest";
    # hdevtools               = "latest";
    # hindent                 = "latest";
      hlint                   = "latest";
      pointfree               = "latest";
    # pointfull               = "latest";
    };

    buildInputs = [ (import <nixpkgs> {}).git ];

    exactDeps = true;

##  shellHook = """
##    hoogle server --host 0.0.0.0 --port 8079
##  """;

  }
