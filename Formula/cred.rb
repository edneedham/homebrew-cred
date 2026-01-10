class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.12.3.tar.gz"
    sha256 "0c13ae7a80d2b09e8b651b28627516e7237ddfbeec7d959b2985c105e295eb9d"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.12.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "528cfbc56caf5312d90944231d75da5a489b8bbe35cd0c79cc47d166815fcd66"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7cc47c4fcd41114ad04757b95a8ccf6ddd8c2a102ac2bbdac22661c446b1d1d2"
  end

    license "MIT OR Apache-2.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/cred --version")
    end
  end