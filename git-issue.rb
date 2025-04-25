class GitIssue < Formula
  desc "A tool to manage git issues"
  homepage "https://github.com/uname-n/git-issue"
  url "https://github.com/uname-n/git-issue/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-issue", "--help"
  end
end
