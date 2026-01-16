class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.14.1.tar.gz"
    sha256 "c3e910bcc14ada7d3a996f33c4a9815da96b55b6bef433306aa50e1005c30722"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.14.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ca3a79403fccbeae62433020a6709f7459398f82e62168e49989e52c9cdf0e6a"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "20e14f0389aecfaf8a820e1579b67c78303f1b7ccafc81109c01a680850609c2"
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