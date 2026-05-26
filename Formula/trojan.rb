class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.0/trojan_0.1.0_darwin_arm64.tar.gz"
      sha256 "192a2e16f8013d7672a8730cf4ef337f6520a4267d8915c059b5a09f3e908bfc"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.0/trojan_0.1.0_darwin_amd64.tar.gz"
      sha256 "0199a610c9649355d2c18e1fb1c1a303d07d7316f343c7670245e729ef0d566d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.0/trojan_0.1.0_linux_arm64.tar.gz"
      sha256 "5d021172940c2e89443cd6eb47ed0cbd4803e54c6a0e658184df36d6ad6e64a2"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.0/trojan_0.1.0_linux_amd64.tar.gz"
      sha256 "f1c47ac14e141d37778d18d5165b22e6144d9076efb2b8bfc810039ef9ec763b"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
