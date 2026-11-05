class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojancli.com"
  version "0.1.8"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.8/trojan_0.1.8_darwin_arm64.tar.gz"
      sha256 "29452fcc76cccbbaa41e8f46e89a9d96360a097716c4797fd9055bc6b0ee1db4"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.8/trojan_0.1.8_darwin_amd64.tar.gz"
      sha256 "152f51be9b1efec8f75ef5e46ea8a6e1a130df5022f654efbca2f8e5ed794c3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.8/trojan_0.1.8_linux_arm64.tar.gz"
      sha256 "ab87dc825075298be4bb437c6c9eb38c9fa2c69f6612d938e964c509ca6dfbeb"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.8/trojan_0.1.8_linux_amd64.tar.gz"
      sha256 "d81dfcc937c15a48ac23f617a6e3d2ccc88e2ffbc50c51265c56fa499567b98b"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
