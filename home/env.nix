args:

let

  pkgs = import ./pkgs.nix {};

in

  pkgs.buildEnv {
    name = "env";
    paths = with pkgs; [
      (aspellWithDicts (d: [ d.en d.en-computers d.en-science ]))
      bashInteractive
      git
      imagemagick
      jq
      lynx
      tmux
      vim
      wget
    ]);
  }
