class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.0/umm-darwin-arm64"
      sha256 "9ae7648b4b279ebf3d604a62358833c141a705ab18f4d94e68db0d4526f993de"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.0/umm-darwin-x64"
      sha256 "4640e4625da75c889d4217c9bfe83e4e0674fef160eb981717722de50aa62959"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.0/umm-linux-arm64"
      sha256 "edd83b19e5ace6dac2b23c7f20d4049455bec102d7e8414a625cdd7e7dad997e"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.0/umm-linux-x64"
      sha256 "dad7ff3c397aaad6d1f83b9df176ce736398fa086cb3966ec7021d97ef507cee"
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
