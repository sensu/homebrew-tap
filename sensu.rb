class Sensu < Formula
  desc "A monitoring framework that aims to be simple, malleable, and scalable."
  homepage "https://sensuapp.org"
  url "https://github.com/sensu/sensu-homebrew/archive/0.0.4.tar.gz"
  version "0.22.0"
  sha256 "02f2e5c5b2219bb1e5602f7872046c38140e7f34825214df81ea8e53528b28c2"

  depends_on "ruby"

  def install
    system "gem", "install", "sensu", "--version=#{version}", "--no-rdoc", "--no-ri"
    system "cp", "-r", "bin", "#{prefix}/"
    system "cp", "-r", "Library", "#{prefix}/"
  end
end
