#! /usr/bin/env nix-shell

with import <nixpkgs> { };
mkShell {
  name = "inhibit-bridge";

  buildInputs = [
    git 
    go
    gotools
    gopls # LSP

    ## DEBUG
    # delve
    # gdlv
  ];

  shellHook = ''
    echo ">>>>> $name"
    echo -n ">>>>> "; go version | grep -o 'go[0-9][0-9.]*'
  '';
}
