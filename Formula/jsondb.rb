class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.15/jsondb-darwin-arm64.tar.gz"
      sha256 "c5f7829fe76d231f3cee62d626a1fde8619b90fd8598abf6abbd7bdd7755167c"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.15/jsondb-darwin-x64.tar.gz"
      sha256 "b7fbfc3c11a1e8acd20c318508a2853dd0733cb05e4170ca969ac44d63e48116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.15/jsondb-linux-arm64.tar.gz"
      sha256 "1252bfc937a220c0fbad30bebce58abd65e9cc9698223b5e157ce132532d4c38"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.15/jsondb-linux-x64.tar.gz"
      sha256 "2cdfd85ccd4e7d47ca640087a2da853a0e83b74cdad3b043036e75b099126303"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
