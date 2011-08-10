require 'formula'

class LatexMk < Formula
  url 'http://downloads.sourceforge.net/project/latex-mk/latex-mk/latex-mk-2.1/latex-mk-2.1.tar.gz'
  homepage 'http://latex-mk.sourceforge.net/'
  md5 '6a9fd9ec2de0169297c1d0228a41fa2b'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
