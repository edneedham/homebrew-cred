class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.15.0.tar.gz"
    sha256 "1d963232cb12d31c81c3bf2ab350297351df31e54635219ef07b6011d8bd96b7"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.15.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e28ea10b181d0084e36b91773097591f41f34991a2f5937163daa7a06a2dc373"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "298f7dc465f190679bf31a37acc4bdaa43aa463b7ed7e58c15b7e4be1f76f3bd"
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