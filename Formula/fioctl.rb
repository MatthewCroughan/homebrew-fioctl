class Fioctl < Formula
  desc "A simple tool to interact with the Foundries.io REST API for managing a Factory."
  homepage "https://foundries.io"
  version "0.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/foundriesio/fioctl/releases/download/v0.11/fioctl-darwin-amd64"
    sha256 "28c3d04caec6754d2102eaf36c448683bcbc3b85a10b8d1a6cd4a10b7561bf87"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/foundriesio/fioctl/releases/download/v0.11/fioctl-linux-amd64"
      sha256 "5c0e32e475ef63d367d436209c231fcc16e3dbf5cf3e9336a8bb86cc378d39b2"
    end
  end

  def install
    bin.install "fioctl"
  end

  test do
    system "#{bin}/fioctl -v"
  end
end
