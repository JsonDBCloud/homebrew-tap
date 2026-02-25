class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.23/jsondb-darwin-arm64.tar.gz"
      sha256 "7e9bf92d07ce4984a3cab334dd29ac77c66bec97c1a234a2db81b24c202a7b0a"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.23/jsondb-darwin-x64.tar.gz"
      sha256 "c763546881e7cf80da0ba08562111e24be78a2c8abf79da47d31b9c998c153df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.23/jsondb-linux-arm64.tar.gz"
      sha256 "d025064a18ff6b7f7252629a4ac4361fff168cce3874086159215759c5b5eb03"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.23/jsondb-linux-x64.tar.gz"
      sha256 "08ef039ed5080fc2ba36f5017cf272ded77b5f6258990e3769cfa5656496d06d"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
