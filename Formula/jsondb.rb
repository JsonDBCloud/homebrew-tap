class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.20/jsondb-darwin-arm64.tar.gz"
      sha256 "681cb1d57524f3b14d18da38318a4214e9d4a6b5ccf36c84a94b4c28613fed3a"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.20/jsondb-darwin-x64.tar.gz"
      sha256 "94055606f7da72bce1edcf66ef26a588bfb90b7ca167604caa6098c7c2e0050d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.20/jsondb-linux-arm64.tar.gz"
      sha256 "dbb57a21187438f2fc9cc5ecb3062c924340de218054fd7c71fe0d9b35358169"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.20/jsondb-linux-x64.tar.gz"
      sha256 "fdf68f3c4713e3800c3a82a3cb48254b864d1d0a79d971abb43ac9a199072292"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
