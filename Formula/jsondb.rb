class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.18/jsondb-darwin-arm64.tar.gz"
      sha256 "ffa909ae3b92337392679148c0060ae94b72497703b9b19685517a112c1c5637"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.18/jsondb-darwin-x64.tar.gz"
      sha256 "a40adb2cebbb6415820d4a061500fa02b4633803f856b7d9f6438e0b18802dbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.18/jsondb-linux-arm64.tar.gz"
      sha256 "b1a8e74b1268783d9933ff1124f38b5ea9ff204ae1de76b3dce3bd3ae1c2cb24"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.18/jsondb-linux-x64.tar.gz"
      sha256 "c6385a70ad0e00c73c0e0df56345ddc76830d3c79c6a6d08d44f3812875345a0"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
