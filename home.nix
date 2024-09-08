{ config, pkgs, ... }: {
  home = {
    packages = with pkgs; [
      yazi
      pass
      brave
      zoxide
      scc
      # mpv
    ];

    file = {
      ".config/my_text_file.txt".text = "Hello World, how are you!";
      ".config/nvim/syntax/yarn.vim".text = builtins.readFile ./files/yarn.vim;
    };

    username = "anto";
    homeDirectory = "/home/anto";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
