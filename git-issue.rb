class GitIssue < Formula
  desc "A tool to manage git issues"
  homepage "https://github.com/uname-n/git-issue"
  url "https://github.com/uname-n/git-issue/archive/refs/tags/0.0.1.tar.gz"
  sha256 "4d6e0bf937c795e51220dbcb2545b8df4a343c2911d80a2f94d4ba50f9e3dcd5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-issue", "--help"
  end
end
