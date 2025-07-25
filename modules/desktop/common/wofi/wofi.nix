{
  unify.modules.wofi = {
    home = {pkgs, ...}: {
      stylix.targets.wofi.enable = false;

      programs.wofi = {
        enable = true;
        style = ./wofi-style.css;
        settings = {
          hide_scroll = true;
          show = "drun";
          width = "30%";
          lines = 8;
          line_wrap = "word";
          term = "kitty";
          allow_markup = true;
          always_parse_args = false;
          show_all = true;
          print_command = true;
          layer = "overlay";
          allow_images = true;
          gtk_dark = true;
          prompt = "";
          image_size = 20;
          display_generic = false;
          location = "top";
          key_expand = "Tab";
          insensitive = true;
          matching = "fuzzy";
        };
      };
    };
  };
}
