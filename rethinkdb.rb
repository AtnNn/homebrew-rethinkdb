require 'formula'

class Rethinkdb < Formula
  homepage 'http://www.rethinkdb.com/'
  sha1 '629a6eed8e13eab8056389d123b203f115ce2e20'

  depends_on 'v8'
  depends_on 'protobuf' => :build

  def install
    system "make PREFIX=#{prefix} install-osx"
  end
end
