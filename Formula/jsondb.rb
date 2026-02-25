class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.21/jsondb-darwin-arm64.tar.gz"
      sha256 "b18cfd48c97822192db220838f55e86fa992143ba44b7c1715fe133d2d65ef99"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.21/jsondb-darwin-x64.tar.gz"
      sha256 "e04bb175fbacd53bf333ac8d248c6fc07348bd1678fde1485c6240b2cddec04a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.21/jsondb-linux-arm64.tar.gz"
      sha256 "2143528116d5856664b0a904021598b5b9b79a5a0a7eac3b0c135974e8db96ac"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.21/jsondb-linux-x64.tar.gz"
      sha256 "83e33e9ef89388d1dc952060918150f5ffe9b03155bec873bc8fc2245ab10f55"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
