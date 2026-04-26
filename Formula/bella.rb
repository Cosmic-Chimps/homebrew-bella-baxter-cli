# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.63/cli-osx-arm64"
      sha256 "8318dc9671187066ef50abaf373bc0a878b5f28ff4a2e5200ad9cb28a52e4462"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.63/cli-osx-x64"
      sha256 "68dd7e5f19ee18efe41d3e512e94aeeaaca8deba9ba0b552a9d93a3a16267827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.63/cli-linux-arm64"
      sha256 "ab1a4a780da9258cc8c1e76ce9218ecbeb9d6c3be84db8f1718c5e10b0fab452"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.63/cli-linux-x64"
      sha256 "d054fb71cfc72aeb4e1655a2a69fff88947d5209783ad22b4693a299f3aa65e4"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end