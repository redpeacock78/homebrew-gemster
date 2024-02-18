class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "4d683429214d586986776e06dd0e486c98f5d4f925aadb3b64f748a7784ed29d"
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
