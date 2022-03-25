{ lib, fetchzip }:

fetchzip {
  name = "iosevka-custom";

  url = "https://github.com/tdroxler/iosevka-custom/raw/master/iosevka-custom.zip";

  sha256 = "1d0qrbnjvjh4kd0hvrf7a55jkq2h1y3df9gkhyzx1g39v5c8i07b";

  postFetch = ''
    mkdir -p $out/share/fonts
    unzip -j $downloadedFile \*.ttf -d $out/share/fonts/iosevka-custom
  '';
}
