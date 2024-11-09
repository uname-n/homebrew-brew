class Mk < Formula
    desc "A lightweight and efficient tool designed to manage and run commands at the project level."
    homepage "https://github.com/uname-n/mk"
    url "https://github.com/uname-n/mk/archive/refs/tags/v2.0.1.tar.gz"
    sha256 "4cb9b43387cb4eea6cddb585114cb118d0ee317e0faab2de941885bd8e838071"
    license "GPL-3.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "false"
    end
  end
  
