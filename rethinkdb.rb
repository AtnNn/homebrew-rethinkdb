require 'formula'

class Rethinkdb < Formula
  homepage 'http://www.rethinkdb.com/'
  url 'https://github.com/rethinkdb/rethinkdb/archive/v1.3.2.tar.gz'
  sha1 '8956087fb98f32fa5a320e696e28b239afe03ab4'
  head 'git://github.com/rethinkdb/rethinkdb.git'

  depends_on 'v8'
  depends_on 'node' => :build
  depends_on 'protobuf' => :build
  depends_on 'less' => :node
  depends_on 'coffee-script' => :node
  depends_on 'handlebars' => :node if build.head?

  def install
    system "cd src; make DEBUG=0 FORCEVERSION=1 RETHINKDB_VERSION=#{version} PREFIX=#{prefix} WEBRESDIR=#{share}/rethinkdb/web"
    bin.install 'build/release/rethinkdb'

    (share/'rethinkdb').mkpath
    share.install 'build/release/web' => 'rethinkdb'
  end
end
