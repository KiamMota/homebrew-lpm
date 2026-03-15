class Lpm < Formula
  desc "Terminal-first CLI companion for lazy.nvim"
  homepage "https://github.com/KiamMota/lpm"
  version "1.0.0"
  url "https://github.com/KiamMota/lpm.git",
      using: :git,
      tag: "v#{version}"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"lpm", "."
  end

  test do
    system "#{bin}/lpm", "--version"
  end
end
