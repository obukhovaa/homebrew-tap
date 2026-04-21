class Tdrums < Formula
  desc "Terminal-based drum training app with MIDI visualization and vim keybindings"
  homepage "https://github.com/obukhovaa/terminal-drums"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/obukhovaa/terminal-drums/releases/download/v0.1.1/tdrums-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "30ba84a0a9cd0ca459bb008238c572fa84fca2d5a4d809a30b8dd498f83361b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/obukhovaa/terminal-drums/releases/download/v0.1.1/tdrums-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57c6aece38ad6c3d5233b93a2c92b11c0783bac2b018f767188be2fc2d619631"
    end
  end

  def install
    bin.install "tdrums"
    (share/"tdrums/assets").install Dir["assets/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tdrums --version")
  end
end
