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

        ansible-language-server
        clang-tools
        ccls
      	bun
        deno
        harper
        lsp-ai
        lua-language-server
        markdown-oxide
        nil
        pipx
        prettierd
        sqlfluff
        sqls
        stylua
        taplo
        vale
        vale-ls
        yaml-language-server
        zls

      ];

    };

  };

}
