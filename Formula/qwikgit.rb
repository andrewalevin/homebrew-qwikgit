class Qwikgit < Formula
  desc "🍷 Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwikgit"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwikgit/main/scripts/qwikgit.sh"
  version "1.3.2"  # <- The version is stored ONLY here
  sha256 "f57b96391476057c0e544c514a8a1d316e21b18322cf4a5a678a0040cfd9dd56"

  def install
    bin.install "qwikgit.sh" => "12"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/qw --version")
  end
end