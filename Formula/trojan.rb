class Trojan < Formula
  desc "Developer-first security CLI. Catch vulnerabilities before they ship."
  homepage "https://trojan.dev"
  version "0.1.7"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.7/trojan_0.1.7_darwin_arm64.tar.gz"
      sha256 "1ca757b3fdc53ee4263cc030ad00b594e3d30587e312de262b36f9f705809324"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.7/trojan_0.1.7_darwin_amd64.tar.gz"
      sha256 "6d145fc16d0edecb0d10467d0b941bf5fec9819ea02ed40f7f9bbc51a6309bff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.7/trojan_0.1.7_linux_arm64.tar.gz"
      sha256 "b2a12f14731f8444bf30a70d9db2d821df912465e1088b39ba0900e1508d5f74"
    end
    on_intel do
      url "https://github.com/dev-zeph/Trojan/releases/download/v0.1.7/trojan_0.1.7_linux_amd64.tar.gz"
      sha256 "e06c37d1e3b7a3f50a7e23f0d9bf5fb71354a229750642ff53f2e1f98b4dbc9a"
    end
  end

  def install
    bin.install "trojan"
  end

  test do
    system bin/"trojan", "version"
  end
end
