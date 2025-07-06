{

  description = "Installing language servers, formatters and related tools";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  };

  outputs = { self, nixpkgs }: let

    system = "aarch64-darwin";

    pkgs = import nixpkgs { inherit system; };

  in {

    packages.${system}.default = pkgs.buildEnv {

      name = "language-tools";

      paths = with pkgs; [

        # Languages
        nodejs_20
        powershell
        zig

        # Tooling
        ansible-language-server
        bun
        ccls
      	clang-tools
        deno
        harper
        lua-language-server
        markdown-oxide
        nil
        pipx
        prettierd
        simple-completion-language-server
        sqlfluff
        sqls
        stylua
        taplo
        uv
        vale
        vale-ls
        yaml-language-server
        zls

      ];

    };

  };

}
