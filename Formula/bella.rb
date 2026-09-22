# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.115/cli-osx-arm64"
      sha256 "b5809f6a826146a2710f5572fbcc0158c0e590a864d6d635d32ec74f964ce38a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.115/cli-osx-x64"
      sha256 "11014d70fb6101c0788b06cc1f8d6874a675458d8f693d101eac2e6af54966d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.115/cli-linux-arm64"
      sha256 "ba9c5b5a3af22eb28747bc16d068d1894b2bae22f8cee246ab4d837311634352"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.115/cli-linux-x64"
      sha256 "689864ab8cfafb30d8dfaa19acf37b3a34d533c2d9166d7e92b0d42c9d94cd95"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end