# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.80/cli-osx-arm64"
      sha256 "b9964d609793242b3f839177a38d20838f6c2548ecdb6bf45ed0a60ab8372276"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.80/cli-osx-x64"
      sha256 "858928e564bb7a60c0bfef516eb89b0862e0a340a1c9817d6391333e122c9c9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.80/cli-linux-arm64"
      sha256 "e6dff46309443e2cf8a54c5d738397731446dd0d9398b5d8c90717e78da23457"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.80/cli-linux-x64"
      sha256 "372ac976dda664838b55c2bd1c1c6bbea9732da211b4177947755e943581627c"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end