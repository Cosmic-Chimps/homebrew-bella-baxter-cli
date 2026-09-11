# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.99/cli-osx-arm64"
      sha256 "78f0073efe1eb7040c3091821ed419a2564b862e81c066324e0eff01608ecb90"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.99/cli-osx-x64"
      sha256 "a0b1e196d902050d9e458e1dd32084d4f0db9beea40ce27eaa9eb012e521d14f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.99/cli-linux-arm64"
      sha256 "9d29e1729b87f7772b857c364b3f7ef477e43c1e935edfe58455a473aa9e61c4"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.99/cli-linux-x64"
      sha256 "7d6494526617c92fb5ead83b5850d6d363a995ad1e5416e046339e2630f9d622"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end