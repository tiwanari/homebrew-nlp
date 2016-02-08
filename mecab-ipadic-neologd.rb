require "formula"

=begin
=end

class MecabIpadicNeologd < Formula
  homepage 'https://github.com/neologd/mecab-ipadic-neologd'
  url 'https://github.com/neologd/mecab-ipadic-neologd/archive/v0.0.4.tar.gz'
  sha256 '05c03953a04e584f7d3d68ca4b6a0604261293b31e776e73189716ff3976a057'
  version '0.0.4'

  depends_on 'mecab'

  def install
    args = %W[
      -n
      -u
    ]

    system "./bin/install-mecab-ipadic-neologd", *args
  end
end
