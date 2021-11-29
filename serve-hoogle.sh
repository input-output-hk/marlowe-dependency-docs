#!/usr/bin/env nix-shell
#!nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/5272327b81ed355bbed5659b8d303cf2979b6953.tar.gz
#!nix-shell -j 1 -i bash

echo
echo Serving Haskell documentation related to Marlowe, Plutus, and Cardano.
echo

hoogle server --no-security-headers --local --port 8079
