class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.1.0/umm-darwin-arm64"
      sha256 "f2151c2a18eb5eaf86d31d42d60ff071eb3524b69e2609147931531c126b1b82"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.1.0/umm-darwin-x64"
      sha256 "1737dcc24ca3920478c85e0ffc3b63dd1ae7509e2167b473cfdc49a8b76b2cdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.1.0/umm-linux-arm64"
      sha256 "905beb7b978ccd6e1b4489b959abe57ed1d69c711de3f1ceb119f70838cdae52"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.1.0/umm-linux-x64"
      sha256 "77412efaaa8028ac5a03ba6581cb4587845289c57ce603358f673630ee9840ff"
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
