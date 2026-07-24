class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.6"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.6/trojan_0.1.6_darwin_arm64.tar.gz"
      sha256 "ceccfa499e8d58bceb8c6a7752fc3844568ad6bdb7bb50d2ca02b6a153395d02"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.6/trojan_0.1.6_darwin_amd64.tar.gz"
      sha256 "37761a767e14e433579003e664f9c8921ef011734eed2f32d2661968f8b5a232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.6/trojan_0.1.6_linux_arm64.tar.gz"
      sha256 "900959657b6e3fca9a3d12d34d5576321ed50e76a6568597094896adf75567e8"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.6/trojan_0.1.6_linux_amd64.tar.gz"
      sha256 "b644d218ce196d49136f391cf9bd4ce05caec3e760b67c1c7ddbc0ef29c1a31b"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
