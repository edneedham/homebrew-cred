class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.13.0.tar.gz"
    sha256 "06850fba3a0ed2aa3f7c56b4400a9c03c3fa7e64d99cc8adf48c9339739aaa6e"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.13.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "9a9f01ceb16cce0f6e033737a61037f40e12cf7ff58d9e501a2ea04c40b2a09d"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f11672882e7fd59d162bfc17fd17324d6503a643ba6e0aea5c8b69702a332080"
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