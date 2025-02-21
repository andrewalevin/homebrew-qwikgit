class AwlGit < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwhawk"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwhawk/main/scripts/qwhawk-git.sh"
  version "1.0.0"
  sha256 "e443d9c6c666f983f8155334efb87af2ea7b9f4559f63cd5ae40b665f5af5f29"

  def install
    bin.install "qwhawk-git.sh" => "qw"
  end

  test do
    system "#{bin}/qw", "--version"
  end
end