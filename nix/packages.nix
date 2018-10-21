{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Tools
    curl
    git
    htop
    nix-repl
    nix-zsh-completions
    unrar
    wget
    xclip
    zip
    zsh

    # Work
    spotify
    dropbox

    # Social
    skype
    discord 
  ];
}