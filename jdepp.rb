require "formula"

=begin
@author: s10018
this code is based on
      https://github.com/s10018/homebrew-tl/blob/master/jdepp.rb
=end

class Jdepp < Formula
  homepage "http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/jdepp/"
  url "http://www.tkl.iis.u-tokyo.ac.jp/~ynaga/jdepp/jdepp-2015-10-05.tar.gz"
  sha256 "89233c3a2284aea38832bd3050d6ab989abc93952b8394afc65c3d89e9592278"

  depends_on 'mecab'

  def install
    args = %W[
      --enable-standalone
      --prefix=#{prefix}
    ]

    system "./configure", *args
    system "make"
    system "make", "model"
    system "make", "install"
  end
end
