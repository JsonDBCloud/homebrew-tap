class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.22/jsondb-darwin-arm64.tar.gz"
      sha256 "1ca29aee69ebe06ab24e0a8337127f8c7e68ea492e1de2f529e7d1627e71227f"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.22/jsondb-darwin-x64.tar.gz"
      sha256 "5e4785c52d25551f6a18d2452ea770937e7d98f25d9f2b996e630fe714a2e25e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.22/jsondb-linux-arm64.tar.gz"
      sha256 "1ca6e9f580040059630b29db5f528415e93e501471687869bc06cd096fd901e5"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.22/jsondb-linux-x64.tar.gz"
      sha256 "d1779ec02b1d4fb99f801dcf80803d193bb2cb60c34f5af389c12448dfe3736b"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
