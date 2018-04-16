{ pkgs ? import <nixpkgs> {}}:
with pkgs;
with python2Packages;
buildPythonPackage {
  name = "stereoscoper";
  version = "0.3.1";
  src = fetchFromGitHub {
    owner = "timbertson";
    repo = "stereoscoper";
    rev = "version-0.3.1";
    sha256 = "1qn5inxvfi561i8ydh577kpkjxl732jb57h2i7h9m6ffl172z008";
  };
  propagatedBuildInputs = [pillow numpy imagemagick tkinter];
  # makeWrapperArgs = ["--prefix" "PATH" "${imagemagick}/bin"];
}
