class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v#{version}/jsondb-darwin-arm64.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v#{version}/jsondb-darwin-x64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v#{version}/jsondb-linux-arm64.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v#{version}/jsondb-linux-x64.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
