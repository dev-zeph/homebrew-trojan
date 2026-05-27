class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.4"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_darwin_arm64.tar.gz"
      sha256 "1d2c0977ec4d1974c2a1d1c7358d9116baf868494aecdd35c3868d1291f47a1f"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_darwin_amd64.tar.gz"
      sha256 "0de6af2e29617af7947d88501d200f8a745c97c55196624cdc649969118e100a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_linux_arm64.tar.gz"
      sha256 "5274ef390034f353df09b2087cce50f3f347580e80a747f4ee52bd434ff13d2c"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.4/trojan_0.1.4_linux_amd64.tar.gz"
      sha256 "efcaa63fe43ad35b20f880ba5273d994eeb8ecb50d9221f898bf62bb3a50e590"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
