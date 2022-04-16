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
    # ghcide                  = "latest";
      haskell-language-server = "latest";
    # hdevtools               = "latest";
      hie-bios                = "latest";
      hindent                 = "latest";
      hlint                   = "latest";
      pointfree               = "latest";
    # pointful                = "latest";
    # SourceGraph             = "latest";
    # stylish-haskell         = "latest";
    # threadscope             = "latest";
    };

    buildInputs = [ (import <nixpkgs> {}).git ];

    exactDeps = true;

##  shellHook = """
##    hoogle server --host 0.0.0.0 --port 8079
##  """;

  }
