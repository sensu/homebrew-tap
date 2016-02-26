class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.11.tar.gz"
  version "0.22.0"
  sha256 "c5c29cd110d47300f7e3f15350385faf79e518ddd296deb9be1a99dd5efec4de"

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
