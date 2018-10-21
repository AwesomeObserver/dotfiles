{ config, pkgs, ... }:

{
  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/sda3";
      preLVM = true;
    }
  ];
  
  users.extraUsers.awesome_observer = {
    name = "awesome_observer";
    group = "users";
    extraGroups = [
      "wheel" "disk" "audio" "video"
      "networkmanager" "systemd-journal"
    ];
    createHome = true;
    uid = 1000;
    home = "/home/awesome_observer";
    shell = "/run/current-system/sw/bin/bash";
  };
  
  boot.loader.grub.device = "/dev/sda";
  
  networking.wireless.enable = true;
}