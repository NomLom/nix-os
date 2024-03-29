# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = ["xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/169e3e83-f353-4b3d-ae74-28f92d35ecfd";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/CD85-57FD";
    fsType = "vfat";
  };

  fileSystems."/mnt/SSD" = {
    device = "/dev/disk/by-uuid/d24438b1-70ad-4bcf-9629-ff250aeff788";
    fsType = "btrfs";
    options = ["noatime"];
  };

  fileSystems."/mnt/media" = {
    device = "/dev/disk/by-uuid/c6d2da72-173a-46d0-9e22-cf0a3656ef2e";
    fsType = "btrfs";
  };

  fileSystems."/mnt/data" = {
    device = "/dev/disk/by-uuid/abe0d28c-4566-465f-8ca6-d1c78fcbebc4";
    fsType = "ext4";
    options = ["noatime"];
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/38f82735-eaf1-4af4-b3d5-b9ef321bd9a8";}
  ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp4s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlo1.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
