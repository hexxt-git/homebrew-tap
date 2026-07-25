class Umm < Formula
  desc "A faster way to ask — direct, structured answers in your terminal"
  homepage "https://github.com/hexxt-git/umm"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.1/umm-darwin-arm64"
      sha256 "caa60b4f5a0485008aaa76d28f831a57aee62023434d23f235fa43e6a9b2641b"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.1/umm-darwin-x64"
      sha256 "b7274ae1933e96bf9f33d5da616ce37e913f3e083a84ff054296258eba2fd315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.1/umm-linux-arm64"
      sha256 "d668c101c62059ab4737f0305aa690052d63778ad6f9abf17a714c5a3bc15488"
    end
    on_intel do
      url "https://github.com/hexxt-git/umm/releases/download/v0.2.1/umm-linux-x64"
      sha256 "ce8a97370f45953ec5b76fd861a3b26bf76b0de5aef830964a1fe0a6003bdac5"
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
