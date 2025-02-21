class Qwhawk < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwhawk"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwhawk/main/scripts/qwhawk-git.sh"
  version "1.0.1"
  sha256 "e5db8d9609b435899d59e8930ed39be131297bd39b016b4b8d3779d1881602fa"

  def install
    bin.install "qwhawk-git.sh" => "qw"
  end

  test do
    system "#{bin}/qw", "--version"
  end
end