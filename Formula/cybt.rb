class Cbyt < Formula
  desc "cbyt — compressed encrypted packing for IPFS"
  homepage "https://github.com/YOUR_GITHUB_ORG/cbyt"
  url "https://github.com/YOUR_GITHUB_ORG/cbyt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "<SHA256_OF_TARBALL>"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=#{version}", "-o", "cbyt", "./cmd/cbyt"
    bin.install "cbyt"
  end

  test do
    assert_match "cbyt", shell_output("#{bin}/cbyt --help")
  end
end
