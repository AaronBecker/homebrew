require 'formula'

class Libgfx < Formula
  url 'http://mgarland.org/dist/libgfx-1.1.0.tar.gz'
  homepage 'http://mgarland.org/software/libgfx.html'
  md5 '7533ef6e5a8da8b7d03eca4c64787983'

  depends_on 'jpeg'
  depends_on 'libtiff'
  depends_on 'fltk'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "cd src && make"
    lib.install ['src/libgfx.a']
    prefix.install Dir['include']
  end
end
