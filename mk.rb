class Mk < Formula
    desc "A lightweight and efficient tool designed to manage and run commands at the project level."
    homepage "https://github.com/uname-n/mk"
    url "https://github.com/uname-n/mk/archive/refs/tags/v2.1.0.tar.gz"
    sha256 "f4e9a213eb7c695042df95207cc76eeaff9d6a71acd1b7a02abe00c61361a92c"
    license "GPL-3.0"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "false"
    end
  end
  
