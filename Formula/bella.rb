# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.114/cli-osx-arm64"
      sha256 "503eb5cbdb4e92c2a4d6eeb47009f93f052089b28dc077a220f402fe2f0cd599"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.114/cli-osx-x64"
      sha256 "5b70df2ea25d8d9019923bd9e3c2a11588041444de236ea65dad30866a8d92ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.114/cli-linux-arm64"
      sha256 "2d7c235afa42e313d931ffdc798f972784f42ea93c2d9bbf63cfd35cb7bcc009"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.114/cli-linux-x64"
      sha256 "6e53b0ed0388a6ce824de1e87cbb1fce435ed4ce07bd6482173bc7cd332a4a6a"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end