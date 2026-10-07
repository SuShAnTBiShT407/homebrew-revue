# Written by revue's release workflow. Do not edit by hand.
class Revue < Formula
  desc "AI pull request reviews in your terminal; you decide what gets posted"
  homepage "https://github.com/SuShAnTBiShT407/homebrew-revue"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.0/revue_darwin_arm64.tar.gz"
      sha256 "1c74675985d7effaeae9afd9e49c90457c169243b9a960c6cd436104736ad7e7"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.0/revue_darwin_amd64.tar.gz"
      sha256 "3aaaa671e1b4286c2a2660b09bdcd24f4abefb9cee00bca543cf452bc3e219ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.0/revue_linux_arm64.tar.gz"
      sha256 "19774c9946eeb2ad5ddfc56df61f44ee21984f79f3ebe4589141863d6ccb4322"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.0/revue_linux_amd64.tar.gz"
      sha256 "fee0bb6afff788fb5fd6bfcb2080feb659c3c96a7c983df19ce34401ffe063a0"
    end
  end

  def install
    bin.install "revue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revue version")
  end
end
