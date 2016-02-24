class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.3.tar.gz"
  version "0.22.0"
  sha256 "6a27d6c4e6774534949f1daec54dbfe9fc89986ea16960ef95f1786d490c35f2"

  depends_on "ruby"

  def install
    system "gem", "install", "sensu", "--version=#{version}", "--no-rdoc", "--no-ri"
    system "cp", "-r", "bin", "#{prefix}/"
  end
end
