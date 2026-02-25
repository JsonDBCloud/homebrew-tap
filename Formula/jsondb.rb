class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.19/jsondb-darwin-arm64.tar.gz"
      sha256 "f3283916ee58648362548f4a16a2210f668d8ea1fd255c13a6be9369515aa1d6"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.19/jsondb-darwin-x64.tar.gz"
      sha256 "943f5e622a0c65b4d0b5bdc7db4f51d830e17c72732ba10dd62f0fb1e5c96c8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.19/jsondb-linux-arm64.tar.gz"
      sha256 "89727de4943c6bdfcb92d2a453d991da2952c00b58d4bec0a54f0c309b54ff54"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.19/jsondb-linux-x64.tar.gz"
      sha256 "9c80ed331ef3e0660c037cc5229f680a39d1849c0bb8a9aa4032e28793324bb0"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
