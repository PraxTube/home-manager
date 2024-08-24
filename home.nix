{ config, pkgs, ... }: {
  home = {
    packages = [
      pkgs.yazi
    ];

    file = {
      ".config/my_text_file.txt".text = "Hello World, how are you!";
    };

    username = "anto";
    homeDirectory = "/home/anto";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
