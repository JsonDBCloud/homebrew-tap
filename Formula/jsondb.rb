class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.14/jsondb-darwin-arm64.tar.gz"
      sha256 "801b4b71217bb00283b467a58a3248d28b8677006943a24f32500df019599a20"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.14/jsondb-darwin-x64.tar.gz"
      sha256 "5a88108509ecaceeba25f6cce3564fa78c5cc17c88083ec9df762e5d7d47d046"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.14/jsondb-linux-arm64.tar.gz"
      sha256 "11ec6c548669e67e859743506edb50b2b11e0c7181576d8022fbbd7dbdfe4c8b"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.14/jsondb-linux-x64.tar.gz"
      sha256 "a160e6ace6190827ae35976e201e8a392d0578b57855e4729a6c49251c8ca2a0"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
