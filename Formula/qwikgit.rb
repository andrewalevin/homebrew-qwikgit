class Qwikgit < Formula
  desc "Git auto-commit and push with timestamp"
  homepage "https://github.com/andrewalevin/homebrew-qwikgit"
  url "https://raw.githubusercontent.com/andrewalevin/homebrew-qwikgit/main/scripts/qwikgit.sh"
  version "1.0.5"  # <- The version is stored ONLY here
  sha256 "9b8974edbe78a664560d07ab92e674ab668024e7a4436cfc00a57e25b42f127a"

  def install
    inreplace "qwikgit.sh", /^VERSION=".*"$/, "VERSION=\"#{version}\""
    bin.install "qwikgit.sh" => "qwikgit"
  end

  test do
    assert_match "qwikgit version #{version}", shell_output("#{bin}/qwikgit --version")
  end
end