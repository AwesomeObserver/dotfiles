boot.initrd.luks.devices = [
  {
    name = "root";
    device = "/dev/sda3";
    preLVM = true;
  }
];

boot.loader.grub.device = "/dev/sda";

networking.wireless.enable = true;