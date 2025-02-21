class Qwik < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwikgit"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwikgit/main/scripts/qwikgit.sh"
  version "1.0.3"
  sha256 "15fde252f0c386ed051851fecde0b33de569cb6385bd74f4aff93eddd3e3da92"

  def install
    bin.install "qwikgit.sh" => "qw"
  end

  test do
    system "#{bin}/qw", "--version"
  end
end