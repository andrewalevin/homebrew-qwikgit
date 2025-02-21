class Qwhawk < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwhawk"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwhawk/main/scripts/qwhawk-git.sh"
  version "1.0.2"
  sha256 "15fde252f0c386ed051851fecde0b33de569cb6385bd74f4aff93eddd3e3da92"

  def install
    bin.install "qwhawk-git.sh" => "qw"
  end

  test do
    system "#{bin}/qw", "--version"
  end
end