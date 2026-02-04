class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.18.0.tar.gz"
    sha256 "c7b019e90a07314baa43d6e5a698be060811be56d0a448117bf9f82f1b83a041"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.18.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "d8ab036802987a5bcc594f5b54276f39040f1e0f29ca1d3be7a7c25633a816c1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "ea667a7c17d93a8a42f21fb80a259e31078570fbb7e77cfbb9e29cf20ee43fce"
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