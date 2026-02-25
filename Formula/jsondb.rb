class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.16/jsondb-darwin-arm64.tar.gz"
      sha256 "6973b195fd5145fd0565bc9c792f895905688a4c3ddd454185627373dbf2d7f2"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.16/jsondb-darwin-x64.tar.gz"
      sha256 "1b5f3ac8075a6c348b0d3a34ca68657be664e3791e5cc3b6eb8d0959fa5aab2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.16/jsondb-linux-arm64.tar.gz"
      sha256 "2a16de8579a766fab0d5b0864a31a2be246728472522ae91bcdc804db4f1f0ef"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.16/jsondb-linux-x64.tar.gz"
      sha256 "9a7d8a053f76b0edef88ca21a84fab9abd820cd56058208ab3e74583b754715a"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
