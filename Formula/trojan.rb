class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.3"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.3/trojan_0.1.3_darwin_arm64.tar.gz"
      sha256 "9ae1a5cc5e34be90a8477ab67785bb94654e5409aae3f010cadda0e016b4598e"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.3/trojan_0.1.3_darwin_amd64.tar.gz"
      sha256 "d5002ae2051826c4bf767e20c0553391b1f40e7bde8c27cc6f08477a566bb79b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.3/trojan_0.1.3_linux_arm64.tar.gz"
      sha256 "3bc2abf650d922b725ac297e44303e7b594a295375f2a91e33041a1f587149f4"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.3/trojan_0.1.3_linux_amd64.tar.gz"
      sha256 "4a5eeb6e64f0fd87cfee8443fd554d9e23664a77bd46854bbe6cfdd5be849338"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
