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
        lua-language-server
        lldb_20
        markdown-oxide
        nil
        pipx
        powershell
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
