# SPDX-License-Identifier: MIT
# Prebuilt erectl binary from Erebine/binaries releases.
# Pin to the latest stable release with scripts/update-formulas.sh.
class Erectl < Formula
  desc "Erebine command-line client"
  homepage "https://erebine.ai"
  version "1.7.2"
  license "MIT"

  depends_on "zstd"

  on_macos do
    on_arm do
      url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erectl-Darwin-arm64"
      sha256 "2d6671f51811a09b8aae35042f3451737d95213d35721bc49e7680613ef9009e"
    end
  end

  on_linux do
    url "https://github.com/Erebine/binaries/releases/download/v1.7.2/erectl-Linux-x86_64"
    sha256 "98badc85dff167f3dbe06ce0c037aac64ccf989781c69f4a28a359d3b9b7ead5"
  end

  def install
    bin.install Dir["erectl-*"].first => "erectl"
  end

  test do
    system bin/"erectl", "--help"
  end
end
