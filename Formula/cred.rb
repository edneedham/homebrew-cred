class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.16.0.tar.gz"
    sha256 "cd858266d711d06b6145a3511bc66aa6057e177184d6f6043ca39543c6ae2778"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.16.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d5d83460a15dca3b40bda09fbdb005f7180b2b6b08d9318a0ad9fe1c3bc20e2c"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d7080ecb2e3ccc9847876199be11f7b91f9b290df339345cbbfefa29a73633bd"
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