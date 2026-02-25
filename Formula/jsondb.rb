class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.12/jsondb-darwin-arm64.tar.gz"
      sha256 "86a05c5383f65d3d9e21be249ccad57766c0de7c43639ebdc07acc16ebd7bc96"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.12/jsondb-darwin-x64.tar.gz"
      sha256 "57534d39a0e6d3a01eee84b1bf0f3a4b38b4a50a6eff1d0ad192a6fb54be88bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.12/jsondb-linux-arm64.tar.gz"
      sha256 "55f4282be3ba0a52bd78015a6f783f296660734d3970361ff61c9cc4c1213613"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.12/jsondb-linux-x64.tar.gz"
      sha256 "8e83fe602a8aeac14fcc61d83b3d9bbab8df377ab1f293cf973715ac721860be"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
