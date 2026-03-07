class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.26/jsondb-darwin-arm64.tar.gz"
      sha256 "1f4b06d7a4bda71432089d70e9a0776ad1e4b4478f1d27278673d8ab78d8757d"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.26/jsondb-darwin-x64.tar.gz"
      sha256 "78fb8ae857ae69494bdbbd26026f9ea383479613c677ff6318082a9d3e9fec4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.26/jsondb-linux-arm64.tar.gz"
      sha256 "de8a3190ccbfe361750b77e9aba36a027b22ddc7862c17356cecad964ae02b21"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.26/jsondb-linux-x64.tar.gz"
      sha256 "efc507455586ace9f97ee1855460890635b560d9445276fde3c27bc743995df3"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
