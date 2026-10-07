# Written by revue's release workflow. Do not edit by hand.
class Revue < Formula
  desc "AI pull request reviews in your terminal; you decide what gets posted"
  homepage "https://github.com/SuShAnTBiShT407/homebrew-revue"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.2.0/revue_darwin_arm64.tar.gz"
      sha256 "384c4d9bac4311d4627417fc20476c3821cee3862b309d59cc30b8974ff43b13"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.2.0/revue_darwin_amd64.tar.gz"
      sha256 "a337dae05198966ba21b54c104925524737f20af8e18fc6c5a6850dd473cdadb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.2.0/revue_linux_arm64.tar.gz"
      sha256 "065da16d9bc3ad6d4b99a5e8273fc9699ea7d1f2e1e6e01078d47ee41f0b6568"
    end
    on_intel do
      url "https://github.com/SuShAnTBiShT407/homebrew-revue/releases/download/v0.2.0/revue_linux_amd64.tar.gz"
      sha256 "43c8b68594b7c5c5ada656af5129166ecdda7d1dbcaa5f5fd54225ac7e034d0f"
    end
  end

  def install
    bin.install "revue"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/revue version")
  end
end
