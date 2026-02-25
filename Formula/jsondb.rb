class Jsondb < Formula
  desc "CLI tool for jsondb.cloud — manage your JSON database from the terminal"
  homepage "https://github.com/JsonDBCloud/cli"
  version "1.0.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.13/jsondb-darwin-arm64.tar.gz"
      sha256 "dae4734529371306e36e2a07c147f3459370dac0d40aa141971dec6e8102d466"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.13/jsondb-darwin-x64.tar.gz"
      sha256 "e3bd81f3e4293c007eb4b9233c44b0bc13bb756c81e226aeaee491a74edcf326"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.13/jsondb-linux-arm64.tar.gz"
      sha256 "992161315e5ba5e4a718bdb72fff3cbd44f90d307c0f4d17a01838a1b7b44b4c"
    else
      url "https://github.com/JsonDBCloud/cli/releases/download/v1.0.13/jsondb-linux-x64.tar.gz"
      sha256 "6343dcc041a8ace00ae579fb6e48b2768497bcd6c821e85464ea1261ef2dc31b"
    end
  end

  def install
    bin.install "jsondb"
  end

  test do
    assert_match "jsondb", shell_output("#{bin}/jsondb --version")
  end
end
