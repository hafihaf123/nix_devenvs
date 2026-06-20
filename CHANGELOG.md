# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

- - -
## [v1.3.0](https://github.com/hafihaf123/nix_devenvs/compare/3c323ae9d249335b25a03a06f4ba63e95ba8f86b..v1.3.0) - 2026-06-20
#### Features
- (**nu**) add nu.nix devShell - ([f475229](https://github.com/hafihaf123/nix_devenvs/commit/f475229cc6f097b15d0b138e45550dc4363c2c7a)) - [@hafihaf123](https://github.com/hafihaf123)
#### Build system
- update flake - ([3c323ae](https://github.com/hafihaf123/nix_devenvs/commit/3c323ae9d249335b25a03a06f4ba63e95ba8f86b)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.2.4](https://github.com/hafihaf123/nix_devenvs/compare/39e854a987e2f4bdb1b8a337212cc91881794dfb..v1.2.4) - 2026-05-27
#### Bug Fixes
- (**rust**) add environment variables for correct dynamic library loading to the shellHooks - ([39e854a](https://github.com/hafihaf123/nix_devenvs/commit/39e854a987e2f4bdb1b8a337212cc91881794dfb)) - [@hafihaf123](https://github.com/hafihaf123)
#### Documentation
- (**readme**) update readme extension flake template to use the github path - ([a7d609c](https://github.com/hafihaf123/nix_devenvs/commit/a7d609c933a026cf3ef08a6af3e799cc42fc9d34)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.2.3](https://github.com/hafihaf123/nix_devenvs/compare/6b0f9a579a9ef22b84b432ade4475eebaa5e208f..v1.2.3) - 2026-05-27
#### Bug Fixes
- (**rust**) add debugger and RUST_SRC_PATH to rust devshell - ([6b0f9a5](https://github.com/hafihaf123/nix_devenvs/commit/6b0f9a579a9ef22b84b432ade4475eebaa5e208f)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.2.2](https://github.com/hafihaf123/nix_devenvs/compare/7777aa3c07396dbddc93a13e4cf5ba760df24295..v1.2.2) - 2026-05-20
#### Bug Fixes
- (**rust**) add libsecret and glib packages to rust devShell for cargo publish - ([7777aa3](https://github.com/hafihaf123/nix_devenvs/commit/7777aa3c07396dbddc93a13e4cf5ba760df24295)) - [@hafihaf123](https://github.com/hafihaf123)
#### Continuous Integration
- (**cog**) fix cog.toml configuration - remove reduntant packages tag - ([00ab78f](https://github.com/hafihaf123/nix_devenvs/commit/00ab78f149edfc79f242bac6fbc57f70714f0573)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.2.1](https://github.com/hafihaf123/nix_devenvs/compare/56bd878d0f4fd573f87496e7436932b66e753f21..v1.2.1) - 2026-05-19
#### Bug Fixes
- make java jdk consistent - ([56bd878](https://github.com/hafihaf123/nix_devenvs/commit/56bd878d0f4fd573f87496e7436932b66e753f21)) - [@hafihaf123](https://github.com/hafihaf123)
#### Build system
- update flake - ([6c81dce](https://github.com/hafihaf123/nix_devenvs/commit/6c81dce0b3fe8279d4a097b9f78d44c987f5f4dd)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.2.0](https://github.com/hafihaf123/nix_devenvs/compare/1b731e63f599fd85d58b4e5126b9c38f5eaf0cbc..v1.2.0) - 2026-04-15
#### Features
- (**java**) add java.nix devShell - ([7dc5abe](https://github.com/hafihaf123/nix_devenvs/commit/7dc5abebc8d5b092e1d2eb6a249165cd30a96c33)) - [@hafihaf123](https://github.com/hafihaf123)
#### Documentation
- update README devShell template - ([1b731e6](https://github.com/hafihaf123/nix_devenvs/commit/1b731e63f599fd85d58b4e5126b9c38f5eaf0cbc)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.1.1](https://github.com/hafihaf123/nix_devenvs/compare/98c0432da5604b5c2893ea628c6ab4c09649ab9e..v1.1.1) - 2026-04-01
#### Bug Fixes
- (**node**) change node LSP to vtsls - ([98c0432](https://github.com/hafihaf123/nix_devenvs/commit/98c0432da5604b5c2893ea628c6ab4c09649ab9e)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.1.0](https://github.com/hafihaf123/nix_devenvs/compare/b8ea7618b0ddbeb519f91c51b1641a7a5241ce35..v1.1.0) - 2026-04-01
#### Features
- (**node**) add node.nix devShell file - ([b8ea761](https://github.com/hafihaf123/nix_devenvs/commit/b8ea7618b0ddbeb519f91c51b1641a7a5241ce35)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.0.3](https://github.com/hafihaf123/nix_devenvs/compare/ca6d8d6eddd900da22e96a969d113df95b3a7e96..v1.0.3) - 2026-04-01
#### Bug Fixes
- (**c**) move explicit gcc package to the stdenv override instead - ([ca6d8d6](https://github.com/hafihaf123/nix_devenvs/commit/ca6d8d6eddd900da22e96a969d113df95b3a7e96)) - [@hafihaf123](https://github.com/hafihaf123)
- (**python**) add UV_PYTHON helper variable to the python environment setup - ([a61c05f](https://github.com/hafihaf123/nix_devenvs/commit/a61c05f62f2b3887a30ee916ee9f4ea4f5b1ea46)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.0.2](https://github.com/hafihaf123/nix_devenvs/compare/4afbcd2ed99c19deb26771614b3580b6fd87f3f2..v1.0.2) - 2026-03-30
#### Bug Fixes
- (**c**) add gcc explicitly as a package - ([c25f51e](https://github.com/hafihaf123/nix_devenvs/commit/c25f51e722a1aa7dc294c0e55db2828ea0ddec85)) - [@hafihaf123](https://github.com/hafihaf123)
#### Documentation
- add comments explaining the packages and their use case - ([366d526](https://github.com/hafihaf123/nix_devenvs/commit/366d5267f66a0f29450e8e2cab6af71d1745dfa5)) - [@hafihaf123](https://github.com/hafihaf123)
#### Refactoring
- change formatter to nixfmt-rfc-style - ([4884b5c](https://github.com/hafihaf123/nix_devenvs/commit/4884b5c52320abcdcdcb00aa8294c65d2b3ec10b)) - [@hafihaf123](https://github.com/hafihaf123)
#### Style
- reformat redundant '{ ... }' into '_' - ([4afbcd2](https://github.com/hafihaf123/nix_devenvs/commit/4afbcd2ed99c19deb26771614b3580b6fd87f3f2)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.0.1](https://github.com/hafihaf123/nix_devenvs/compare/e7e7d1da8e0fdf924127d4523401c1dd78a62506..v1.0.1) - 2026-03-24
#### Bug Fixes
- (**rust**) add cargo-nextest to packages - ([e7e7d1d](https://github.com/hafihaf123/nix_devenvs/commit/e7e7d1da8e0fdf924127d4523401c1dd78a62506)) - [@hafihaf123](https://github.com/hafihaf123)
#### Build system
- update flake - ([6fdc712](https://github.com/hafihaf123/nix_devenvs/commit/6fdc7127064a615e99994f4fd271b4fbc7b15c4e)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

## [v1.0.0](https://github.com/hafihaf123/nix_devenvs/compare/d416372c3b71beab0dfa856b6a8655dd68a5c249..v1.0.0) - 2026-03-24
#### Features
- add python and C environments - ([69d0fb3](https://github.com/hafihaf123/nix_devenvs/commit/69d0fb35d80099c48a5b9f3548bd0c6bd5525615)) - [@hafihaf123](https://github.com/hafihaf123)
- add rust development environment flake - ([724fe09](https://github.com/hafihaf123/nix_devenvs/commit/724fe0922b073b6d0c0198e6af0c9bdff1eeb9c7)) - [@hafihaf123](https://github.com/hafihaf123)
- add flake.nix master flake - ([d416372](https://github.com/hafihaf123/nix_devenvs/commit/d416372c3b71beab0dfa856b6a8655dd68a5c249)) - [@hafihaf123](https://github.com/hafihaf123)
#### Bug Fixes
- update flake lock - ([e33c983](https://github.com/hafihaf123/nix_devenvs/commit/e33c983b83ff14c5ff87bf23bfe45b37ca654526)) - [@hafihaf123](https://github.com/hafihaf123)
#### Documentation
- add README describing how to extend and use the master flake - ([e533121](https://github.com/hafihaf123/nix_devenvs/commit/e5331219717bb1b3cada94b30e901e761d61a16c)) - [@hafihaf123](https://github.com/hafihaf123)
#### Continuous Integration
- (**cog**) add initial cog configuration file - ([8fffa97](https://github.com/hafihaf123/nix_devenvs/commit/8fffa973b32063745df7500edd95af4e1722bab7)) - [@hafihaf123](https://github.com/hafihaf123)

- - -

Changelog generated by [cocogitto](https://github.com/cocogitto/cocogitto).