class Ghostit < Formula
  desc "Encrypt any folder on your drive. No account. No server. Your key, your data."
  homepage "https://github.com/neuromance-admin/ghostit"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.2/ghostit-macos-arm.tar.gz"
      sha256 "b2c20fecdb7f08316c3c86aa75af20fee7c7804c81714d722c39eee80c272387"
    else
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.2/ghostit-macos-intel.tar.gz"
      sha256 "b22db93fa9942bea42d5a945bcda7bfd21ba22b5e65de553baaf5a0ee96ac1a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.2/ghostit-linux-arm64.tar.gz"
      sha256 "08ecb32ea52bb1a8cbbafb6ebe3ac1e708028516ae9dd1bf972d94d2ebaf02ca"
    else
      url "https://github.com/neuromance-admin/ghostit/releases/download/v0.1.2/ghostit-linux-x86_64.tar.gz"
      sha256 "7d7101570279240386fcde17b603f9c7ebd63d4d911206ef0708a6acf5f655c2"
    end
  end

  def install
    bin.install "ghostit"
  end

  test do
    assert_match "ghostit #{version}", shell_output("#{bin}/ghostit --version")
  end
end
