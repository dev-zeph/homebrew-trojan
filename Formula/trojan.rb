class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.1/trojan_0.1.1_darwin_arm64.tar.gz"
      sha256 "009eca7fb996d6b49ec890d8739133de5076301bc45bbc9bbeb0680c7abf9eb4"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.1/trojan_0.1.1_darwin_amd64.tar.gz"
      sha256 "9844a7a0b82f53e100b516d2e155b173fabea60cc5aaa37d8c0785e449a1d226"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.1/trojan_0.1.1_linux_arm64.tar.gz"
      sha256 "0c62c27de7d862c52f93418777f184eb1ac711821fc73e4fb25e4cddb7d4471d"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.1/trojan_0.1.1_linux_amd64.tar.gz"
      sha256 "9ccc5331e4c12876ee511ca72ed66d698b344c5ad9b1ecb2efcf1a0f713098f6"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
