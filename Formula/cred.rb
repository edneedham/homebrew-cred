class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.15.3.tar.gz"
    sha256 "75a44a6dd4faa9625416c07c2215773fe232012f94fedbeff1d0c07efbd8e54a"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.15.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bb1ed2b1c4fd2b4a4f387e35b96018059e7dd98e424890a6f69147856e8ede3d"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "b93eb08faff15d32fd193bce43949429144a11c139265e8efc23a68100d6e255"
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