class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.7.tar.gz"
  version "0.22.0"
  sha256 "48ef8790eefdfb2f7fa665e9a7ed4be5fd651feb0698b353167fe17f9ae252dc"

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
