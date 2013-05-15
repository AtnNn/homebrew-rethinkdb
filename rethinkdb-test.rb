require 'formula'

class Rethinkdb < Formula
  homepage 'http://www.rethinkdb.com/'
  url 'http://dr-doom:8888/job/package-dist/55/artifact/rethinkdb-1.4.5-1374-ge23e46.tgz'
  # sha1 '24f9b38b551e05ed560ca6ec85abd2276e29951e'

  depends_on 'boost'
  depends_on 'v8'

  def install
    system "./configure --prefix=#{prefix} --fetch protobuf --fetch protoc"
    system "make install-osx"
  end
end
