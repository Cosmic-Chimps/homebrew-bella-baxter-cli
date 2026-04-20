# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.52/cli-osx-arm64"
      sha256 "cc6220bd03052fff1e5e8b573af235db25669be2791a017f67adad7d266a9c46"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.52/cli-osx-x64"
      sha256 "b2aceeca49f217de63a19eba098a23396cd64e6b17225ab7ce0767b2eab052b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.52/cli-linux-arm64"
      sha256 "cff7a88cad87dcfa067fe9106c4c1a7f764dd93b82a45fd1795260fbc8d37462"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.52/cli-linux-x64"
      sha256 "57e6bba14e9d7c8548db7351e40e525d4a56c0f31ec4adaa88ec45c8ee28ce8f"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end