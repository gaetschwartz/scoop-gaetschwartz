class Purr < Formula
  desc "A powerful terminal utility"
  homepage "https://github.com/gaetschwartz/purr"
  license "MIT"

  head "https://github.com/gaetschwartz/purr.git", branch: "main"

  depends_on "rust" => :build

  def install
    # Build with coreml and metal features
    system "cargo", "install", "--locked", "--root", prefix, "--path", ".", "--features", "coreml,metal"
  end

  test do
    # Test that the binary was installed
    system "#{bin}/purr", "--version"
  end
end