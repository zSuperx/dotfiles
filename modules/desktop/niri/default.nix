{
  self,
  inputs,
  ...
}: {
  unify.modules.niri = {
    home = {
      pkgs,
      config,
      lib,
      ...
    }: {
      imports = [
        # All Niri config is stored in `./_settings`, so just recursively import everything
        (inputs.import-tree.initFilter (p: lib.hasSuffix ".nix" p) [
          ./_settings
        ])
      ];

      stylix.targets.niri.enable = false;
    };

    nixos = {pkgs, ...}: {
      nixpkgs.overlays = [
        inputs.niri.overlays.niri
      ];

      imports = [
        inputs.niri.nixosModules.niri
      ];

      programs.niri.enable = true;
    };
  };
}
