class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "a80338e265813e8b0f63737294e148c16af9b0f25f5f7b9271e4b5feb0bf067f"
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
