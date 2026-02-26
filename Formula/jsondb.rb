class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.24/jsondb-darwin-arm64.tar.gz"
      sha256 "8122b2b16decf7bbfc5e44bf01f96e66763bc02495f78098c954f372b6fe8b73"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.24/jsondb-darwin-x64.tar.gz"
      sha256 "8d4998ccf7494b9e586825d7a21d6d0d7237c3e57b7c5ed09317837fcbf2db01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.24/jsondb-linux-arm64.tar.gz"
      sha256 "e37d589b5107bbbcb98201634e23a3af8fbd9f8bc29c645c5da7b1bdfa462502"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.24/jsondb-linux-x64.tar.gz"
      sha256 "d93e11a463610e06d98dda9be26b5ff2bec890cca60fe14fdbfb3cfd35185b7a"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/jsondb --version"))
  end
end
