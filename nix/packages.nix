{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    curl
    dropbox
    git
    htop
    nix-repl
    nix-zsh-completions
    skype
    spotify
    unrar
    wget
    xclip
    zip
    zsh
  ];
}