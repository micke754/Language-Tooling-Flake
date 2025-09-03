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

        # Languages
        libgcc
        nodejs_20
        powershell
        typst
        zig

        # Tooling
        ansible-language-server
        bun
        ccls
      	clang-tools
        delve
        deno
        golangci-lint
        golangci-lint-langserver
        gopls
        gotools
        harper
        lua-language-server
        markdown-oxide
        nil
        pipx
        prettierd
        shfmt
        sqlfluff
        sqls
        stylua
        superhtml
        taplo
        tinymist
        typstyle
        uv
        vale
        vale-ls
        vscode-langservers-extracted
        yaml-language-server
        zls

      ];

    };

  };

}
