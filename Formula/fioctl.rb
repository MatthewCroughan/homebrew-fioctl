# This file was generated by GoReleaser. DO NOT EDIT.
class Fioctl < Formula
  desc "A simple tool to interact with the Foundries.io REST API for managing a Factory."
  homepage "https://foundries.io"
  version "0.1.45"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/MatthewCroughan/fioctl/releases/download/v0.1.45/fioctl_0.1.45_Darwin_x86_64.tar.gz"
    sha256 "a573cefbcd2e46e07155893b363005a12ff8b4745875c636297a82beefbbca8d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/MatthewCroughan/fioctl/releases/download/v0.1.45/fioctl_0.1.45_Linux_x86_64.tar.gz"
      sha256 "be63751382caf263b736eb386fde13c2c744767db06e4e3c97347c9569aec725"
    end
  end
  
  depends_on "go"
  depends_on "gcc"

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
