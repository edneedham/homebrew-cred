class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.15.1.tar.gz"
    sha256 "88b26cd4545185dedc0ee2c7f9f6994be0e8d8434af6f1319eaf6ddba329ac7d"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.15.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1392089215ff7b88d550e48fe9955dd03e0907b1e74ac5be0d0f121ef7aba906"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "892ffb9e01b1ebd0c8923e988dbbbe465a4cf0a4c3f3ec7052951c3dee6f0915"
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