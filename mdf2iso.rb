class Mdf2iso < Formula
  desc "Converts *.mdf CD images to *.iso format. Based on mdf2iso by rzippo."
  homepage "https://github.com/rzippo/MDFtoISO"
  url "https://github.com/StarHack/homebrew-repo/raw/master/mdf2iso/mdf2iso-0.3.1.tar.gz"
  sha256 "937551920f1ba0e5df2e1a957ad987d0dc45e88bd943474aa08a9f0cbf4294c1"
  version "0.3.1"

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "mdf2iso"
  end

  test do
    # test script output
    assert_match "mdf2iso v0.3.1 by Salvatore Santagati", %x('#{bin}/mdf2iso')
  end
end
