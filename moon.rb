class Moon < Formula
    desc "Moon"
    homepage "https://github.com/uname-n/moon"
    url "https://github.com/uname-n/moon/archive/refs/tags/0.0.0.tar.gz"
    sha256 "6371697daa0436ef5f779bacf21b1bde3f78b29e6fc82de2a2c18ed394e96a48"
    license "GPL-3.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "false"
    end
  end
  
