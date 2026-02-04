class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.17.0.tar.gz"
    sha256 "f678a2eb7a207e507633f7812fb98360a553003ed36b8b6b7e8b4a18d021f0c7"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.17.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c011dc766852ca5da433a432f53c864d6eebfd57a3d2766a1cf31ffcbe60a85b"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "25949c60e97ba6c9a115b491070006e111b48c8621786ef2ee7905dc7d2ec9c6"
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