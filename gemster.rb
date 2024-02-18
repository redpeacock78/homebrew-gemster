class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "c0fdfeb8fc3dc287a30ea549cfb99af9cf29532cb32c76c266282ba71efbeeef"
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
