require 'formula'

class OmeGtest < Formula
  url 'http://googletest.googlecode.com/files/gtest-1.7.0.zip'
  homepage 'http://code.google.com/p/googletest/'
  sha1 'f85f6d2481e2c6c4a18539e391aa4ea8ab0394af'

  depends_on 'cmake' => :build

  def install
    lib.mkpath
    cd(lib) do
      system "cmake .."
      system "make"
    end
  end
end