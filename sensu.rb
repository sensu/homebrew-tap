class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.9.tar.gz"
  version "0.22.0"
  sha256 "6a379484d91ba437b7ec0aaecb4fc33ce90d5363b4717c403285f0e9418b1fdd"

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
