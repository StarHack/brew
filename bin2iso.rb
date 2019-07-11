class Bin2iso < Formula
  desc "Converts *.cue CD images along with their *.bin or *.raw files to *.iso format. Based on bin2iso by pld-linux."
  homepage "https://github.com/pld-linux/bin2iso"
  url "https://github.com/StarHack/homebrew-repo/raw/master/bin2iso/bin2iso-19b.tar.gz"
  sha256 "5b135dcf35fcabf7ad94ad1bd409c0bb41e1b4b6d3a22de41ec7532c39b73b29"
  version "1.9b"

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "bin2iso"
  end

  test do
    # test script output
    assert_match "bin2iso V1.9b - Converts RAW format", %x('#{bin}/bin2iso')
  end
end
