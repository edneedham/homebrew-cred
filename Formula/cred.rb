class Cred < Formula
    desc "Local-first credential manager"
    homepage "https://github.com/edneedham/cred"
    url "https://github.com/edneedham/cred/archive/refs/tags/v0.4.0.tar.gz"
    sha256 "3d1f3ee32241d0a4507f32eac3ecbd19a9afb1a38b9090b9378a08a65fa5d3b2"

  bottle do
    root_url "https://github.com/edneedham/homebrew-cred/releases/download/v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fe22cb3e46d6c72729912699b8acd4d0a65b5976cfdbe89ebb6153d219b5fab2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "fbeaaaa781689dc09b1c2c1057d61926a0179abb8f2d16b11df6b96233a1f9e6"
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