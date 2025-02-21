class AwlGit < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwhawk"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwhawk/main/scripts/qwhawk-git.sh"
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    bin.install "qwhawk-git.sh" => "qw"
  end

  test do
    system "#{bin}/qw", "--version"
  end
end