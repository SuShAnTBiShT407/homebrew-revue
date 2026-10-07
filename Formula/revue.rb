# Written by revue's release workflow. Do not edit by hand.
class Revue < Formula
  desc "AI pull request reviews in your terminal; you decide what gets posted"
  homepage "https://github.com/SuShAnTBiShT407/homebrew-revue"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.1/revue_darwin_arm64.tar.gz"
      sha256 "ba1e3598666299e7627afc7185badeb276493aaa12c03d45e821a1861b6fe2a7"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.1/revue_darwin_amd64.tar.gz"
      sha256 "4eaaaa4a4bd823220b7bd5ef1ac759cfaf62163797ed0703b4a90881df38f141"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.1/revue_linux_arm64.tar.gz"
      sha256 "18522b4af77c3452dbfca080ab97bb1061cdfc5dfb971f7d857fdbbede9c4b74"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.1.1/revue_linux_amd64.tar.gz"
      sha256 "e7e7bfa7381496a36d6994ad9359dfb2a1467820fdc3619467a26ac040ca1155"
    end
  end

  def install
    bin.install "revue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revue version")
  end
end
