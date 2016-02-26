class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.10.tar.gz"
  version "0.22.0"
  sha256 "f91075ca7c8a58d8ec33c344d56bc11d2c98abfd1e78f1182088200085e71455"

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
