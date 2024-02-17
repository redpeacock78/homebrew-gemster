class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c9f2f80b378bf7281d8f325f2b476f006ee323f9856128a0c0ee2a45b166f2e6"
  license "MIT"

  depends_on "crystal" => :build

  def install
    system "shards", "build", "--release"
    bin.install "bin/test"
  end

  test do
    system "gemster"
  end
end
