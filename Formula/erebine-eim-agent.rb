# SPDX-License-Identifier: MIT
# Prebuilt erebine-eim-agent binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class ErebineEimAgent < Formula
  desc "Erebine EIM inference agent"
  homepage "https://erebine.ai"
  version "1.10.0"
  license "MIT"

  depends_on "zeromq"
  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erebine-eim-agent-Darwin-arm64"
      sha256 "26062988796e45c5e16e5cb46a220afcd72289b6f0bad58fdda092f6266ba598"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erebine-eim-agent-Linux-x86_64"
    sha256 "ef3b276188bfb83ff89ef409262dcb5a5249171cee4a5564c4a91bdd78a64de7"
  end

  def install
    bin.install Dir["erebine-eim-agent-*"].first => "erebine-eim-agent"
  end

  test do
    system bin/"erebine-eim-agent", "--help"
  end
end
