class PtlamAgentPluginCompiler < Formula
  desc "Compile PTLam-compatible agent plugin projects"
  homepage "https://github.com/fam-tung-lam/ptlam-agent-plugin-compiler"
  url "https://registry.npmjs.org/@fam-tung-lam/ptlam-agent-plugin-compiler/-/ptlam-agent-plugin-compiler-0.1.0.tgz"
  sha256 "972a54252eb2f5fd3470a26e98a19bd0bc97ea9979bbe0b6503722495634c4ca"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"plugin-compiler", "init", "--root", testpath
    system bin/"plugin-compiler", "validate", "--root", testpath
  end
end
