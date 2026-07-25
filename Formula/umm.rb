class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.2/umm-darwin-arm64"
      sha256 "43c75bf6b729428021f25f240d89b6a7b65d5da733e6cf885380bdee4f04586d"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.2/umm-darwin-x64"
      sha256 "0e43f023814afe44e77d6d9a275f8d66aac719973dbd3b4652f7ebbef8958a1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.2/umm-linux-arm64"
      sha256 "c73260340ddfd1a0245dd328129dcbf3efd832c22c3dc5ac68f7ed5b4caade3c"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.2/umm-linux-x64"
      sha256 "2d61e14ffe6bd27b46b16b0c21e5843f41fca05e92428a8848567947297ca51f"
    end
  end

  def install
    # The release asset is a single self-contained binary named per-platform
    # (e.g. umm-darwin-arm64). Install whichever one was downloaded as `umm`.
    bin.install Dir["umm-*"].first => "umm"
  end

  test do
    assert_path_exists bin/"umm"
  end
end
