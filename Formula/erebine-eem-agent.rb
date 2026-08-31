# SPDX-License-Identifier: MIT
# Prebuilt erebine-eem-agent binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class ErebineEemAgent < Formula
  desc "Erebine EEM execution agent"
  homepage "https://erebine.ai"
  version "1.10.0"
  license "MIT"

  depends_on "zeromq"
  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erebine-eem-agent-Darwin-arm64"
      sha256 "50d9094b4d10bac9b5d30bc08fda75cd93faef9306ee3946661df7f64c068c70"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erebine-eem-agent-Linux-x86_64"
    sha256 "195bade35469629924f9ae3bee8ba1e710104f18fdbcd4a3f1f74ba1f90bfcb2"
  end

  def install
    bin.install Dir["erebine-eem-agent-*"].first => "erebine-eem-agent"
  end

  test do
    system bin/"erebine-eem-agent", "--help"
  end
end
