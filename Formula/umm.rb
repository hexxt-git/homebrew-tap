class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.2/umm-darwin-arm64"
      sha256 "83c14ba78acd0a4aa207c7a18a87feb51df695e2cde44a932c6ca4b6d8b08fe5"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.2/umm-darwin-x64"
      sha256 "6da569fc083bd779724667f688589478308c6d4f8c025f30c35bd6f7ace92b64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.2/umm-linux-arm64"
      sha256 "ef79917d52c0a5a598cd6f51cb3ba4ca9cc18cb16a4425ec284afffd04855cd0"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.3.2/umm-linux-x64"
      sha256 "cbd16952ef5267d710f728391c6e690464328b6d791f281e088159b19690b0dc"
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
