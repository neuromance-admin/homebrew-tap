class Ghostit < Formula
  desc "Encrypt any folder on your drive. No account. No server. Your key, your data."
  homepage "https://github.com/neuromance-admin/ghostit"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.1/ghostit-macos-arm.tar.gz"
      sha256 "f8eef5fbe230d559f3100a0d68b3b1f1d3475fbb6b55b0baa55e60e094100a00"
    else
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.1/ghostit-macos-intel.tar.gz"
      sha256 "e6bdb0d095ca512683eea01052fbe440ec27689b6b690f8cd0ba4587f83346b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.1/ghostit-linux-arm64.tar.gz"
      sha256 "8f4f4e217a38cb063d264bf824e364d4448ec3136d3f779c686d18697ae3a270"
    else
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.1/ghostit-linux-x86_64.tar.gz"
      sha256 "6f6f9a21b62a449850e1b425d03d1a46aa627d644e5234ed2e6b00aed7ed7c88"
    end
  end

  def install
    bin.install "ghostit"
  end

  test do
    assert_match "ghostit #{version}", shell_output("#{bin}/ghostit --version")
  end
end
