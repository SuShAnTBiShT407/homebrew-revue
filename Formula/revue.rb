# Written by revue's release workflow. Do not edit by hand.
class Revue < Formula
  desc "AI pull request reviews in your terminal; you decide what gets posted"
  homepage "https://github.com/SuShAnTBiShT407/homebrew-revue"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_darwin_arm64.tar.gz"
      sha256 "495f5bc5c14bfa2a5d9e61d61d5c4b849784c99a386825229b0cdbf6f70c90e8"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_darwin_amd64.tar.gz"
      sha256 "b843d7ba612650005aa70a3918eab2af6232963b680f172a7c5247592fb09088"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_linux_arm64.tar.gz"
      sha256 "4b3d2a7102102bc11865526f4be952379b26ed96107a221b47b933fba28727fc"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.3.0/revue_linux_amd64.tar.gz"
      sha256 "6b394f73b2233ec81548232d5267bcceef246837e710f3e448904aa2ec12ffc4"
    end
  end

  def install
    bin.install "revue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revue version")
  end
end
