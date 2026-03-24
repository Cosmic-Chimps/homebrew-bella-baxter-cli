# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.8/cli-osx-arm64"
      sha256 "49b1e05ae28233bdbf24b209fe792535556deb11c3836433e73029df5bf595e9"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.8/cli-osx-x64"
      sha256 "f1913770967989212c186f6beb7b3b5ebae0c43a77da2ba9126645fcbcb84f5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.8/cli-linux-arm64"
      sha256 "2ddfe783619e753e479a9b9b95b49479eab2edc4900fece7431b062ee680017a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.8/cli-linux-x64"
      sha256 "065262364e4fbf226449c1b61236389104e3d2a1ba9d985a2632b5ef4f4366ca"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end