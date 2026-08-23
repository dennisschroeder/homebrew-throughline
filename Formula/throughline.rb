# typed: false
# frozen_string_literal: true

class Throughline < Formula
  desc "Local, headless coordination state layer for human/agent workflows."
  homepage "https://github.com/dennisschroeder/throughline"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.1.0/throughline_0.1.0_darwin_amd64.tar.gz"
      sha256 "6ad8ba8e7dcda64ee527a37f647585a24b2ccbdd09bdee574a6c98209772c749"

      def install
        bin.install "throughline"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.1.0/throughline_0.1.0_darwin_arm64.tar.gz"
      sha256 "321e20628d841261cf18e648a00dc9889f6548e078c9056658e8cecd20fb891a"

      def install
        bin.install "throughline"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.1.0/throughline_0.1.0_linux_amd64.tar.gz"
      sha256 "bd4ca77bcbdf2148feaba2d5a2beac3579177d457bc51fb1bf3d859b7a9b6be4"

      def install
        bin.install "throughline"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.1.0/throughline_0.1.0_linux_arm64.tar.gz"
      sha256 "cfc1d7771ef9956e06cf2be406db970db4e18b38664ca226097f8964587bb00b"

      def install
        bin.install "throughline"
      end
    end
  end

  test do
    system "#{bin}/throughline", "version"
  end
end
