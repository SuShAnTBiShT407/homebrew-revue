# Written by revue's release workflow. Do not edit by hand.
class Revue < Formula
  desc "AI pull request reviews in your terminal; you decide what gets posted"
  homepage "https://github.com/SuShAnTBiShT407/homebrew-revue"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_darwin_arm64.tar.gz"
      sha256 "523f0d0d716b4dea2ff10d606e667790cb9b82b08f0ad65c48be5dc62c1e9ca2"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_darwin_amd64.tar.gz"
      sha256 "df8978cd50a56ffdb5bf9a5d5309dac42679f2bb054010003bdaa5b204513207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_linux_arm64.tar.gz"
      sha256 "67686d3ed747aeaafd20acc52f7d3a20798c9db743a390201a19d74bcbcbaee9"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_linux_amd64.tar.gz"
      sha256 "0fd8973f1ee04253e3d3cdaab4d95691718075007072aa4482c85f964e9c2f45"
    end
  end

  def install
    bin.install "revue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revue version")
  end
end
