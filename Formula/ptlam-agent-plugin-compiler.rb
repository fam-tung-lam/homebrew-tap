class PtlamAgentPluginCompiler < Formula
  desc "Compile PTLam-compatible agent plugin projects"
  homepage "https://github.com/fam-tung-lam/ptlam-agent-plugin-compiler"
  url "https://registry.npmjs.org/@fam-tung-lam/ptlam-agent-plugin-compiler/-/ptlam-agent-plugin-compiler-0.1.1.tgz"
  sha256 "71743d33906f76668cf43f818a94d0e2ba8a51d0f262d597ce70dc6599cd9317"
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
