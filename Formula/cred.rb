class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.12.4.tar.gz"
    sha256 "dc1b390a2d5cb22d15251fe55b5b4261e4d946fe450cddda3f9ab1612af325c5"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.12.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "c79ce8fa793aaf4388dbc49cb367d8675f7c3a9145ec70c59ba114c01b5d6390"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "5760551db161c52b3b3aeef466eeb6dd0f26bb823f31a357a4d44a4b92048b0f"
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