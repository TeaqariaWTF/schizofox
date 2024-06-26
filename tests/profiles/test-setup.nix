{
  # he's a thicc boi
  virtualisation = {
    cores = 4;
    memorySize = 4096;
    qemu.options = ["-vga none -enable-kvm -device virtio-gpu-pci,xres=720,yres=1440"];
  };

  users.users.test = {
    isNormalUser = true;
    password = "";
  };

  home-manager.sharedModules = [
    {home.stateVersion = "23.05";}
  ];

  services = {
    displayManager = {
      autoLogin = {
        enable = true;
        user = "test";
      };
    };

    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
  };
}
