# SPDX-License-Identifier: MIT
# Prebuilt erectl binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class Erectl < Formula
  desc "Erebine command-line client"
  homepage "https://erebine.ai"
  version "1.10.0"
  license "MIT"

  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erectl-Darwin-arm64"
      sha256 "5326e39ed1047932c80b0e95c9637c98b8342e22752939ac4df9979d32b9f79b"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.10.0/erectl-Linux-x86_64"
    sha256 "2abd4f9d9f8b120af6df364f104679c603f9ba242a0cee72d09277b217ca6cc3"
  end

  def install
    bin.install Dir["erectl-*"].first => "erectl"
  end

  test do
    system bin/"erectl", "--help"
  end
end
