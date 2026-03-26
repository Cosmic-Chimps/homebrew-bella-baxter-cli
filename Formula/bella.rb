# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.23/cli-osx-arm64"
      sha256 "55175176fdb10eeffd71706f5bab541060341fddb3c1957cb43941ed775163f8"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.23/cli-osx-x64"
      sha256 "ceae1e73112b63e7782cb185f23a1eff577bc223d505c6620e52b43080b48ccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.23/cli-linux-arm64"
      sha256 "afad87ba0562cfab0ca2956a22d0d7843d1c94a040e54e13b92b1aaadbc68589"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.23/cli-linux-x64"
      sha256 "dbfc5232437c9a041c3b384b9184a56e8e3423607177ca223dbfb0aa8df373ad"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end