class GitIssue < Formula
  desc "A tool to manage git issues"
  homepage "https://github.com/uname-n/git-issue"
  url "https://github.com/uname-n/git-issue/archive/refs/tags/0.0.0.tar.gz"
  sha256 "922118c271f0d26681f2a0bda433f2f89ba5fca160a9ee9836213f72703a20a0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-issue", "--help"
  end
end
