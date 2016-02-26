class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.6.tar.gz"
  version "0.22.0"
  sha256 "cc456a97466860be8369d105e3a249538234b183afbf9d2c54ccb446c6de2c7b"

  depends_on "openssl" => "universal"
  depends_on "readline"
  depends_on "libffi"
  depends_on "libyaml" => "universal"
  depends_on "ruby" => "universal"

  def install
    system "gem", "install", "sensu", "--version=#{version}", "--no-rdoc", "--no-ri"
    system "cp", "-r", "bin", "#{prefix}/"
    system "cp", "-r", "Library", "#{prefix}/"
    system "cp", "-r", "scripts", "#{prefix}/"
  end
end
