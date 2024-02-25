{
  config,
  pkgs,
  ...
}: {
  # GPU
  hardware.nvidia.modesetting.enable = true;
  hardware.opengl.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.stable;
}
