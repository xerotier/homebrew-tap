# SPDX-License-Identifier: MIT
# Prebuilt erebine-eem-agent binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class ErebineEemAgent < Formula
  desc "Erebine EEM execution agent"
  homepage "https://erebine.ai"
  version "1.7.2"
  license "MIT"

  depends_on "zeromq"
  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erebine-eem-agent-Darwin-arm64"
      sha256 "d4751372677a73a1db55226c554b365c3bfcc42036306334d56fd138a7b5f542"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erebine-eem-agent-Linux-x86_64"
    sha256 "712326f52115496b9ef77463b6249867ce6d5ada2850e34b5431a0aaa11828d1"
  end

  def install
    bin.install Dir["erebine-eem-agent-*"].first => "erebine-eem-agent"
  end

  test do
    system bin/"erebine-eem-agent", "--help"
  end
end
