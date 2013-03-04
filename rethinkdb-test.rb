require 'formula'

class RethinkdbTest < Formula
  homepage 'http://www.rethinkdb.com/'
  url 'http://newton:8800/dist/rethinkdb-1.3.2-462.tgz'
  sha1 '629a6eed8e13eab8056389d123b203f115ce2e20'
  version '1.3.2-462'

  depends_on 'v8'
  depends_on 'protobuf' => :build

  def install
    system "make PREFIX=#{prefix} install-osx"
  end
end
