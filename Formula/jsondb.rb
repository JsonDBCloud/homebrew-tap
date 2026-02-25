class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.17/jsondb-darwin-arm64.tar.gz"
      sha256 "4aa4035a17a0a5776badf5249b1005e91272c19af1377bbb8aa54a9150b85d1b"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.17/jsondb-darwin-x64.tar.gz"
      sha256 "6371d68222149b658be951354039c0f0cccf8ef47c5d6d50945242980f82cad6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.17/jsondb-linux-arm64.tar.gz"
      sha256 "1c95ae3c03e27876dc635c1afa3790e09b5f59bb78c8ef9c8820b6e85f57a17c"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.17/jsondb-linux-x64.tar.gz"
      sha256 "593525f474727ba526eb27e07d6f77ca2f4bde1af0996889f5e94ef2fb620f70"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
