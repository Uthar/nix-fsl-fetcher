# nix-fsl-fetcher

Nix plugin that adds support for the `fsl+http`, `fsl+https`, `fsl+ssh`, `fsl+file` schemes for resolving flakes.

# usage

```
nix build
nix --extra-plugin-files ./result/bin/libnix-fsl-fetcher.so flake metadata fsl+https://fossil.galkowski.xyz/nix-fsl-fetcher
```
