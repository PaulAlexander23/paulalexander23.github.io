---
layout: post
title: "C++ compilation, optimisation and scientific computing"
date: 2025-04-25
author: "Paul Alexander"
tags: [C++, compilation, optimisation, scientific computing]
---

This is a space for me to add my thoughts on C++ compilation, optimisation and scientific computing.
I will be adding more content here as I go along, along with my current practises.


# C++ compilation

## Stages - Compiling and linking

The compilation process is split into two stages: compiling and linking.
There are a number of different tools for both stages.

The default compiler to my mind is g++, the [gnu C++ compiler](https://gcc.gnu.org/).
However, if [clang](https://clang.llvm.org/) is available, then I would use that instead.
This is part of the llvm project and is a drop-in replacement for g++.
It has more diagnostic capabilities and is generally faster than g++ -- though I do want to test this on my projects and post the results here.

The way to use either:
```
g++ -c -o foo.o foo.cpp
```
or
```
clang++ -c -o foo.o foo.cpp
```
This will compile the file foo.cpp into an object file foo.o.


The default linker would be gnu's ld, which is the default linker for g++ and typically the system default linker too.
Clang also has a linker called [lld](https://lld.llvm.org/) which is faster too -- again, I'll test this on my projects and post the results here.

The linker is responsible for linking the object files together to create the final executable.
The linker is also responsible for linking in any libraries that are needed.

The way to use it is through the compiler.
```
g++ -o foo foo.o
```
or
```
clang++ -fuse-ld=lld -o foo foo.o
```

Or through the linker directly:
```
ld -o foo foo.o
```
or
``` 
ld.lld -o foo foo.o 
```
```
ld64.lld -o foo foo.o 
```


## Development and debugging

The goal during development and debugging is to have the fastest possible compilation time to allow for fast compile-test-debug cycles.
But we also want to have good error messages and debugging information.

During the compilation I use:
```
$CXX -ggdb -Wall
```

## Release

The goal during release is to have the fastest possible executable.

# Scientific computing packages


