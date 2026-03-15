class Lpm < Formula
  desc "Terminal-first CLI companion for lazy.nvim"
  homepage "https://github.com/KiamMota/lpm"
  version "1.0.0"
  url "https://github.com/KiamMota/lpm.git",
      using: :git,
      tag: "v#{version}"

  depends_on "go" => :build

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    system "#{bin}/lpm", "--version"
  end
end
