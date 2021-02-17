{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.username = "jchild";
  home.homeDirectory = "/Users/jchild";
  home.stateVersion = "21.05";

  home.packages = with pkgs; [
    (aspellWithDicts (d: [ d.en d.en-computers d.en-science ]))
    bashInteractive
    git
    htop
    imagemagick7
    jq
    lynx
    tmux
    vim
    wget
  ];
}
