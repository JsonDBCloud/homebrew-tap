class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.10/jsondb-darwin-arm64.tar.gz"
      sha256 "48122b0aa716530f84d558e3cc9936024744775898091781c73c5565d3b54846"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.10/jsondb-darwin-x64.tar.gz"
      sha256 "2b6085bf07c0473e2748b049ec64aeff195866fc55bec1b42faf4e26330ee188"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.10/jsondb-linux-arm64.tar.gz"
      sha256 "4c32a38480cbec3011c8ea9cbb8325574cc29af0918f9dd93b9cc4286e9d0b29"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.10/jsondb-linux-x64.tar.gz"
      sha256 "16186f269eef8aa29b0a8b44289abeab7411c0b69bf96980b82d277aff807897"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
