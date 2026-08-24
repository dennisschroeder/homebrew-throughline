# typed: false
# frozen_string_literal: true

class Throughline < Formula
  desc "Local, headless coordination state layer for human/agent workflows."
  homepage "https://github.com/dennisschroeder/throughline"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.2.0/throughline_0.2.0_darwin_amd64.tar.gz"
      sha256 "4ec20ab21ce99f24a479392b962ab0613fc8c744137f5d1faf072245dc8977e8"

      def install
        bin.install "throughline"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.2.0/throughline_0.2.0_darwin_arm64.tar.gz"
      sha256 "89c7cbb95c7f9c9e3c1404c34857c79ab8f51501c37ad4adb3a26b30d07229e6"

      def install
        bin.install "throughline"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.2.0/throughline_0.2.0_linux_amd64.tar.gz"
      sha256 "6b6b14dae63e8fc57b33ef99f645eb5bc326d8dcd550e3793227368d1bdb8ed9"

      def install
        bin.install "throughline"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/dennisschroeder/throughline/releases/download/v0.2.0/throughline_0.2.0_linux_arm64.tar.gz"
      sha256 "5b9f03bfa412a00a84cd7ed4d8252888402de1635bbbd2e45b4da7705b16f47f"

      def install
        bin.install "throughline"
      end
    end
  end

  test do
    system "#{bin}/throughline", "version"
  end
end
