{

  description = "Installing language servers, formatters and related tools";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  };

  outputs = { self, nixpkgs }: let

    system = "x86_64-linux";

    pkgs = import nixpkgs { inherit system; };

  in {

    packages.${system}.default = pkgs.buildEnv {

      name = "language-tools";

      paths = with pkgs; [

        carapace
        pipx
      	bun
        nil
        sqlfluff
        ansible-language-server
        # helix-gpt
        markdown-oxide
        prettierd
        sqls
        taplo
        vale-ls
        vale
        yaml-language-server
        lua-language-server
        stylua

      ];

    };

  };

}
