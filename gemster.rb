class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://github.com/redpeacock78/gemster/releases/download/v0.1.0/gemster-macos.zip"
  sha256 "caff714634ba6dba466e2fbcf8bdb3846591b30d1e18b971dc25b1018e608abd"
  license "MIT"

  version "0.1.0"
  def install
    bin.install "gemster"
  end

  test do
    system "gemster", "-v"
  end
end
