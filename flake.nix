{
  description = "Fossil fetcher plugin for Nix";

  inputs = {
    nix.url = "nix/2.7.0";
  };

  outputs = { self, nix }: let

    system = "x86_64-linux";

  in {

    packages.${system}.default = import ./. {
      nix = nix.packages.${system}.nix;
    };

  };
}
