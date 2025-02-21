class Qwikgit < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwikgit"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwikgit/main/scripts/qwikgit.sh"
  version "1.0.6"  # <- The version is stored ONLY here
  sha256 "b823a5c2d75d689cc5a8b3eadeebe33cbdff03d553f0d0b258b78c8a1ec86a05"

  def install
    inreplace "qwikgit.sh", /^VERSION=".*"$/, "VERSION=\"#{version}\""
    bin.install "qwikgit.sh" => "qwikgit"
  end

  test do
    assert_match "qwikgit version #{version}", shell_output("#{bin}/qwikgit --version")
  end
end