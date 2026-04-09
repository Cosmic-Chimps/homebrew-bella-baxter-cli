# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.49/cli-osx-arm64"
      sha256 "c48e54aa836cd2edb5fca41aac1e021c04613fa1cefe357983cac560e95199ac"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.49/cli-osx-x64"
      sha256 "b860b122abd66249fe1055ca127b1cd70d10db20bad800f72fb09710c81c7bf1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.49/cli-linux-arm64"
      sha256 "85ef18c8da4e9427afba068f799a4d93abfe15d9560ac144f9d59b19fc884354"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.49/cli-linux-x64"
      sha256 "7e40e147cdb169975403a3f8a404624236689fdc2b2bcd72f0c5ba5ee3395289"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end