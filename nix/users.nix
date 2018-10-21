{ config, pkgs, ... }:

{
  users.extraUsers.awesome_observer = {
    name = "awesome_observer";

    group = "users";

    extraGroups = [
      "audio"
      "disk"
      "docker"
      "networkmanager"
      "systemd-journal"
      "video"
      "wheel"
    ];

    createHome = true;

    home = "/home/awesome_observer";

    uid = 1000;
    
    shell = "/run/current-system/sw/bin/zsh";
  };
}