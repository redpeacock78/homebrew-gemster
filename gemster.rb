class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "6a3fa03574527d9c5c9840e9af14d6d8eb608c99b708800c7fa8f4ed26322748"
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
