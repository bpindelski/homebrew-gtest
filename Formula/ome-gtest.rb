require 'formula'

class Ome_gtest < Formula
  url 'http://googletest.googlecode.com/files/gtest-1.7.0.zip'
  homepage 'http://code.google.com/p/googletest/'
  md5 '2d6ec8ccdf5c46b05ba54a9fd1d130d7'

  def options
    [
      ["--universal", "Build for both 32 & 64 bit Intel."],
    ]
  end

  def install
    # ENV.universal_binary if ARGV.build_universal?

    # system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    # # gtest-config tries to be clever in locating libraries, but Homebrew's
    # # Cellar confuses it. This lets `gtest-config --libs` work correctly
    # inreplace 'scripts/gtest-config', '`dirname $0`', '$bindir'
    # system "make install"
  end
end