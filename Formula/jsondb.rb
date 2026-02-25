class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.11/jsondb-darwin-arm64.tar.gz"
      sha256 "423d1e4f7c1a88fe8b3a0f77b8760d61c16f2e081b537fbf5258e700a61d39d1"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.11/jsondb-darwin-x64.tar.gz"
      sha256 "797f33563c66a63532c66facba5a5d94c4673c84cbe6e4e2174e3acba36fadfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.11/jsondb-linux-arm64.tar.gz"
      sha256 "f4107bed94deb9d18cb7e7ea6b2833f8e377f4b53046d57aa97981ce41696de0"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.11/jsondb-linux-x64.tar.gz"
      sha256 "e788fe23be80a20bfb072990e040ed6c9672b1edf067c8ba9b8fe486c208f1db"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
