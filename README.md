# Sparse Array

It is a generic array for storing data with gaps.
Optimizes required space by not storing zeroes.
Can help for implementing efficient storage of huge sparse matrices.

Element access complexity: O(Log N).

Extends over a [dynarr](https://github.com/evjeesm/dynarr)

## Supported platforms

| Platforms | CI/CD | COVERAGE |
|---|---|---|
| Linux | ![status](https://img.shields.io/badge/Linux-passes-green) | [![codecov](https://codecov.io/github/evjeesm/sparse/graph/badge.svg?flag=debian)](https://codecov.io/github/evjeesm/sparse) |
| Windows | ![status](https://img.shields.io/badge/Windows-passes-green) | [![codecov](https://codecov.io/github/evjeesm/sparse/graph/badge.svg?flag=windows)](https://codecov.io/github/evjeesm/sparse) |

[See Full Documentation](https://evjeesm.github.io/sparse)

## Memory layout

![sparse-scheme](imgs/sparse-scheme.svg)
