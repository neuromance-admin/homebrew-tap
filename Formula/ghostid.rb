class Ghostid < Formula
  desc "Encrypt any folder on your drive. No account. No server. Your key, your data."
  homepage "https://github.com/neuromance-admin/ghostid"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostid/releases/download/v0.1.0/ghostid-macos-arm.tar.gz"
      sha256 "b6674ee31578d18064ac56f2d2f826174a44e588b27efb7e7868cc038d37d9f7"
    else
      url "https://github.com/neuromance-admin/ghostid/releases/download/v0.1.0/ghostid-macos-intel.tar.gz"
      sha256 "d95808c728284200890eee4405ef592b39c3c4344b1077566a7cb5ebbf34c728"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostid/releases/download/v0.1.0/ghostid-linux-arm64.tar.gz"
      sha256 "f8f8bb40ce7ebc4f625fe951149142d3b2c3744778401d0e793b7d747060c2a5"
    else
      url "https://github.com/neuromance-admin/ghostid/releases/download/v0.1.0/ghostid-linux-x86_64.tar.gz"
      sha256 "708d75764cee3921b173d6d574d4003102d0fd00ee37205e014e1d27d9f52989"
    end
  end

  def install
    bin.install "ghostid"
  end

  test do
    assert_match "ghostid #{version}", shell_output("#{bin}/ghostid --version")
  end
end
