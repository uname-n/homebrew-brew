class Mk < Formula
    desc "A lightweight and efficient tool designed to manage and run commands at the project level."
    homepage "https://github.com/uname-n/mk"
    url "https://github.com/uname-n/mk/archive/refs/tags/v2.0.0.tar.gz"
    sha256 "99f5f27fe29934499c06b078edd1f6c7cb9cad5000eaa79d2bbeb3107580a1a5"
    license "GPL-3.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "false"
    end
  end
  