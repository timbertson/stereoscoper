{ pkgs ? import <nixpkgs> {}}:
with pkgs;
with python2Packages;
buildPythonPackage {
  name = "stereoscoper";
  version = "0.3";
  src = fetchFromGitHub {
    owner = "timbertson";
    repo = "stereoscoper";
    rev = "version-0.3";
    sha256 = "1cq7gqpndm1gpcq91qbj0qw1h2ajkk775gz1ac3xpx7s2p8wq3v6";
  };
  propagatedBuildInputs = [pillow numpy imagemagick tkinter];
  # makeWrapperArgs = ["--prefix" "PATH" "${imagemagick}/bin"];
}
