# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.133"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.133/cli-osx-arm64"
      sha256 "be7638362e34f6d052435356c6c5b24bffc0426c7de305abd2f249ab7513255c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.133/cli-osx-x64"
      sha256 "e6ced85328b20a83e224da5cf811db52a0c5f12f8f273c013836ab936fd4a799"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.133/cli-linux-arm64"
      sha256 "6c91baac4b267aa2d3c25330ffaff5df5663cb9fd8380c0b28770eaad46092f1"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.133/cli-linux-x64"
      sha256 "dc4fab6d2f249ee6c2fd727568dba365030ab6cda0fb44059ff402d58d027a92"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end