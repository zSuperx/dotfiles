{
  unify.modules.gaming = {
    nixos = {pkgs, ...}: {
      environment.systemPackages = with pkgs; [
        prismlauncher
        heroic
      ];

      programs.steam.enable = true;
    };
  };
}
