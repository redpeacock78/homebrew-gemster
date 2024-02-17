class Gemster < Formula
  desc "Simple task runner with file watch & hot reload functions"
  homepage "https://github.com/redpeacock78/gemster"
  url "https://ghrl.deno.dev/redpeacock78/gemster/gemster-macos.zip"
  version "0.1.1"
  sha256 "2ee743cbc05b85ce368fdf83c7c6d2fd3d9873fd5cfdb09ed9c7c45f0794665d"
  license "MIT"

  def install
    bin.install "gemster"
  end

  test do
    system "gemster", "-v"
  end
end
