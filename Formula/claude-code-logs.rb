# typed: false
# frozen_string_literal: true

class ClaudeCodeLogs < Formula
  desc "Browse and search Claude Code chat logs"
  homepage "https://github.com/fabriqaai/claude-code-logs"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fabriqaai/claude-code-logs/releases/download/v0.1.1/claude-code-logs_0.1.1_darwin_amd64.tar.gz"
      sha256 "dbf89b14910e8c98ea6359868fd4eabdef97efe14a1c27421c192fc3abaca62c"
    end
    on_arm do
      url "https://github.com/fabriqaai/claude-code-logs/releases/download/v0.1.1/claude-code-logs_0.1.1_darwin_arm64.tar.gz"
      sha256 "a9ee7195829dca005af39774586263153402eb5a1fe4e2c5c2d38214a2c4e838"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fabriqaai/claude-code-logs/releases/download/v0.1.1/claude-code-logs_0.1.1_linux_amd64.tar.gz"
      sha256 "3d7ddfe8811ef8685b864dd2189878e7dcdb8c4b7fd26546591909965b93738e"
    end
  end

  def install
    bin.install "claude-code-logs"
  end

  test do
    system "#{bin}/claude-code-logs", "version"
  end
end
