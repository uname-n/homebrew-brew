class Moon < Formula
    desc "Moon"
    homepage "https://github.com/uname-n/moon"
    url "https://github.com/uname-n/moon/archive/refs/tags/0.0.1.tar.gz"
    sha256 "9fa01297b4baca9e908815fa523d7f43e0acad653b8c33b4d2cdddbbc521a7ae"
    license "GPL-3.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "false"
    end
  end
  
