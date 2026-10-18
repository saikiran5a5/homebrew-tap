class Hello < Formula
  desc "Tool to print 'Hello, world!'"
  homepage "https://github.com/saikiran5a5/hello-world"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/saikiran5a5/hello-world/releases/download/v2.0.0/hello-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "d54e6dde3f86c92063086d207102b27064e095e373b04eae129910b8f4b63ce3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saikiran5a5/hello-world/releases/download/v2.0.0/hello-v2.0.0-x86_64-unknown-linux-glibc.tar.gz"
      sha256 "23627e984849bc22f3fd313551868ae27839e7f4dc206dc97248dedb10921f2a"
    end
  end

  def install
    bin.install "hello"
  end
end
