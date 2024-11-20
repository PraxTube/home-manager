{ config, pkgs, ... }: {
  home = {
    packages = with pkgs; [
      signal-desktop
      pass
      brave
      scc
      libresprite
      nasm
      imagemagick
      libreoffice
      vieb
      git-filter-repo
      cpulimit
      # You also want to copy the mpv files, maybe that could be a good first test with Le Nam?
      # mpv

      # # Terminal stuff
      # alacritty - not up to date in nix
      # zellij - not up to date in nix
      # nu - not up to date!
      # starship - not up to date!
      # Useful tools
      bat
      bottom
      du-dust
      eza
      zoxide
      yazi
      ripgrep
      # Game dev
      wasm-bindgen-cli
    ];

    # file = {
    #   ".config/my_text_file.txt".text = "Hello World, how are you!";
    #   ".config/nvim/syntax/yarn.vim".text = builtins.readFile ./files/yarn.vim;
    # };

    username = "rancic";
    homeDirectory = "/home/rancic";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
}
