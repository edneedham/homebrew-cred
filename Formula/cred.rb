class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.2.1.tar.gz"
    sha256 "2f45f6a540a9a8a5b2ff87a6dd1563abeaff9d4996f1c6e621a0a5eb88d84b61"
    license "MIT OR Apache-2.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match version.to_s, shell_output("#{bin}/cred --version")
    end
  end