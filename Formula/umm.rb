class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.1/umm-darwin-arm64"
      sha256 "2a595c1497c633860c4b58ec0e87603e5fac14c5746ead9370e67ad49ddac641"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.1/umm-darwin-x64"
      sha256 "aa8ea0c56272f67ba7c05a503deb31fd5a299e420aae46ec1c8d09f2feb99064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.1/umm-linux-arm64"
      sha256 "0d2d5f6a20dd011cefc181b6c8aad40835715a2897cf02a8e7c010454b4541e3"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.1/umm-linux-x64"
      sha256 "0a3b5d3e3681505d647a0e3e1b0fb7af80dfc4c31dbece200624cec7b8c57cb2"
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
