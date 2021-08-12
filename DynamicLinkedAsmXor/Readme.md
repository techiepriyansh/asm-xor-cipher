# DynamicLinkedAsmXor
Calls `singlechar_xor` function from assembly in C source code by dynamic linking

## Run
`LD_LIBRARY_PATH=$(pwd)/bin ./main`

## Rebuild
```bash
make clean
make
```
> **_NOTE:_**  If you are on a 64-bit machine, you will need to install `gcc-multilib`