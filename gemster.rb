class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "1609bf6c8ac717d9d307d37931642aa1d84dea6c0ba7a1d7eec66fbc41a829d9"
  license "MIT"

  depends_on "crystal" => :build

  def install
    system "shards", "build", "--release"
    bin.install "bin/gemster"
  end

  test do
    system "gemster", "-v"
  end
end
