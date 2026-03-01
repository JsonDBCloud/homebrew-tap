class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.25/jsondb-darwin-arm64.tar.gz"
      sha256 "f98954d5e06a9f820e44e7b2ae7f1d219a61423f910e18a940a41f72be552aa9"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.25/jsondb-darwin-x64.tar.gz"
      sha256 "11fa5a94443bca4365c8e3caaf93935ac10da03a99711dce2d0a88cdef493579"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.25/jsondb-linux-arm64.tar.gz"
      sha256 "565ff280dd0e7cc607daec7a1f8982fa5223a5dc1683ddffab3b21633d85b4a8"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.25/jsondb-linux-x64.tar.gz"
      sha256 "0ab96de36f1a01a6dd4c2643e144d917aec22698e89f78bc9964b74554cbbb17"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
