OpenWolf-Libraries [![Build Status](https://travis-ci.com/GrangerHub/OpenWolf-Libraries.svg?branch=master)](https://travis-ci.com/GrangerHub/OpenWolf-Libraries)
==================

This repository contains a collection of bash scripts (aka recipies) to build library dependencies of the [OpenWolf Engine](https://github.com/TheDushan/OpenWolf-Engine) using [Travis-CI](https://travis-ci.com) and [AppVeyor](https://www.appveyor.com/) on multiple platforms.  Build artifacts and build logs are automatically uploaded to the [releases](https://github.com/GrangerHub/OpenWolf-Libraries/releases) section.

<br>

Platforms that are currently supported are:

| OS          | Architecture |
| ----------- | ------------ |
| Android 5.0 | aarch64      |
| Android 5.0 | x86_64       |
| Linux       | x86_64       |
| OS X        | x86_64       |
| Windows     | x86_64       |

<br>

And here is a matrix of the generated libraries.  S is static, D is dynamic.

| Name          | Android 5.0 | Linux | OS X | Windows |
| ------------- | ----------- | ----- | ---- | ------- |
| bullet3       | S           | S     | S    | S       |
| bzip2         | S           | S     | S    | S       |
| curl          | S, D        | S, D  | S, D | S, D    |
| freetype      | S, D        | S, D  | S, D | X, D    |
| gmp           | S, D        | S, D  | S, D |         |
| gnutls        | S, D        | S, D  | S, D |         |
| libjpeg-turbo | S, D        | S, D  | S, D | S, D    |
| libpng        | S, D        | S, D  | S, D | S, D    |
| libsodium     | S, D        | S, D  | S, D | S, D    |
| nettle        | S, D        | S, D  | S, D |         |
| ogg           | S           | S     | S    | S       |
| openal        | D           | D     | D    | D       |
| sdl2          | S, D        | S, D  | S, D | S, D    |
| vorbis        | S           | S     | S    | S       |
| zlib          | S, D        | S, D  | S, D | S, D    |

yasm.exe (1.3.0 x86_64) is from [The Yasm Modular Assembler Project](https://yasm.tortall.net/Download.html)