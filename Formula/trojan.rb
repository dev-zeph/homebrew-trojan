class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.2"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.2/trojan_0.1.2_darwin_arm64.tar.gz"
      sha256 "700d8361cf2d802f60d23559f4044ac1925d2f7258ef2dca9f2a976c48174ecf"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.2/trojan_0.1.2_darwin_amd64.tar.gz"
      sha256 "410232f79a36b1d11a9f5d61417de3be8b98a51a33668f470307e9077dfc7cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.2/trojan_0.1.2_linux_arm64.tar.gz"
      sha256 "0e9309e3d333d30050eed01d60e1f33b5bb1ccc85591251f56154af5fdc4436f"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.2/trojan_0.1.2_linux_amd64.tar.gz"
      sha256 "21c3a41c37088948fbdbb39150a9b784459d7adfbda9d90bd68ea6ef58ec1a6d"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
