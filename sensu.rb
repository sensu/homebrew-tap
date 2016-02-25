class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.5.tar.gz"
  version "0.22.0"
  sha256 "a6c1e7d2a815a19b38dcd1bd3071956ec06290f8da52aa2591897bff0281af3b"

  depends_on "ruby"

  def install
    system "gem", "install", "sensu", "--version=#{version}", "--no-rdoc", "--no-ri"
    system "cp", "-r", "bin", "#{prefix}/"
    system "cp", "-r", "Library", "#{prefix}/"
  end
end
