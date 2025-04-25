class GitIssue < Formula
  desc "A tool to manage git issues"
  homepage "https://github.com/uname-n/git-issue"
  url "https://github.com/uname-n/git-issue/archive/refs/tags/0.0.2.tar.gz"
  sha256 "94c99ecde36d257d55c39ace0df135f71a6e47c843363e3d65c232128f8b7af9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/git-issue", "--help"
  end
end
