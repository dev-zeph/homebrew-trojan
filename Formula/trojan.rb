class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.4"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_darwin_arm64.tar.gz"
      sha256 "6c77793e2357790fc3becf5666852e8c199923767a8eb6c775def3dd02bd3b66"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_darwin_amd64.tar.gz"
      sha256 "8aa8f4a307e21ea613888e7def5a07ba3f3fa1fb63915460a3b861c4b192cc3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_linux_arm64.tar.gz"
      sha256 "59f3649bc1829b5045ee24fe7a18283ca9ae37d6b5a413081084c4f9341c0c53"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_linux_amd64.tar.gz"
      sha256 "524c175a1f23369911db976b2afe255d3892895dfb08903b377924c3c55c6903"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
