with import <nixpkgs> { };

fetchFromGitHub {
  owner = "NixOS";
  repo = "nixpkgs";
  rev = "f7fd8a6";
  sha256 = "0n30pxxv1mszvasa4hzxki42chy4376l781fvhrmx757ihyxad3q";
}
