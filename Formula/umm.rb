class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.0/umm-darwin-arm64"
      sha256 "9d42113d251e507f16b89aa06fb36ae90ec40eac8c4c170d2ff7784abcf08c5c"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.0/umm-darwin-x64"
      sha256 "89191a502d4edbe58f84c968fa0528158c0a598d02f3587dd9fab6cba52c550f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.0/umm-linux-arm64"
      sha256 "0e18ee29352e62022d9ad4b9a9abff70adc9d2afb468931c97b6fda9cd958156"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.0/umm-linux-x64"
      sha256 "8e4b9f6e83d34b4d3c9816749ca22897ec3590c5c85e0aa37b8d982b3f66a26a"
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
