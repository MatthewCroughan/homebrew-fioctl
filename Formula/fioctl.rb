# This file was generated by GoReleaser. DO NOT EDIT.
class Fioctl < Formula
  desc "A simple tool to interact with the Foundries.io REST API for managing a Factory."
  homepage "https://foundries.io"
  version "0.1.35"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/matthewcroughan/fioctl/releases/v0.1.35/fioctl_0.1.35_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "332baadefe74421e33b560ee17d76e9effde7e7ccb79dcf464fa7e49b45d5d5a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/matthewcroughan/fioctl/releases/v0.1.35/fioctl_0.1.35_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "96a834f0f0cb2d0c88b57af8ed0a8c71f4c9284297d23ef9d05240122e59c604"
    end
  end
  
  depends_on "git"
  depends_on "go"
  depends_on "zsh" => :optional

  def install
    bin.install "fioctl"
  end

  def caveats; <<~EOS
    How to use this binary
  EOS
  end

  test do
    system "#{bin}/fioctl -v"
  end
end
