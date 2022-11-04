# nix-fsl-fetcher

Nix plugin that adds support for the `fsl+http`, `fsl+https`, `fsl+ssh`, `fsl+file` schemes for resolving flakes.

# usage

Plugins require the same Nix version:

```
export NIX_VERSION=2.11.0
nix build --override-input nix nix/$NIX_VERSION
nix run nix/$NIX_VERSION -- --extra-plugin-files ./result/bin/libnix-fsl-fetcher.so flake metadata fsl+https://fossil.galkowski.xyz/nix-fsl-fetcher
```
