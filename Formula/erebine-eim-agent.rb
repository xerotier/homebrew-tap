# SPDX-License-Identifier: MIT
# Prebuilt erebine-eim-agent binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class ErebineEimAgent < Formula
  desc "Erebine EIM inference agent"
  homepage "https://erebine.ai"
  version "1.7.2"
  license "MIT"

  depends_on "zeromq"
  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erebine-eim-agent-Darwin-arm64"
      sha256 "c9e6134ab6fee44b60e0e6ae89409ecfe385850aa31008a16d1ef4516fd1a60d"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erebine-eim-agent-Linux-x86_64"
    sha256 "026a8ff5c69daea4b8fe9b61610e2bf71f013c839e1f25c8758505936bb0a5bc"
  end

  def install
    bin.install Dir["erebine-eim-agent-*"].first => "erebine-eim-agent"
  end

  test do
    system bin/"erebine-eim-agent", "--help"
  end
end
