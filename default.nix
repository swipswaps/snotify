{ nixpkgs ? import ./nix/nixpkgs.nix
}:

with import nixpkgs {
  config = {
    allowBroken = true;
  };
};
with stdenv.lib;

stdenv.mkDerivation rec {
  inherit version;
  name = "snotify-${version}";
  src = ./.;

  buildInputs = [
    # FIXME: mopidy
  ];

  meta = with stdenv.lib; {
    description = "Personal music server for stuff that's not on Spotify";

    homepage = https://github.com/yurrriq/snotify;

    license = licenses.mit;
    maintainers  = with maintainers; [ yurrriq ];
    inherit (mopidy.meta) platforms;
  };
}
