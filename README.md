# PTLam Homebrew Tap

Homebrew formulae for PTLam projects.

## Agent Plugin Compiler

Install the stable
[Agent Plugin Compiler](https://github.com/fam-tung-lam/ptlam-agent-plugin-compiler)
release:

```bash
brew install fam-tung-lam/tap/ptlam-agent-plugin-compiler
```

Homebrew installs the required Node.js runtime. Upgrade or uninstall the
compiler with:

```bash
brew upgrade fam-tung-lam/tap/ptlam-agent-plugin-compiler
brew uninstall ptlam-agent-plugin-compiler
```

The npm release remains the source of the Formula version and package bytes.
Formula updates follow successful stable npm releases and pin the exact npm
tarball with SHA-256.

## Other formulae

Install another Formula with its fully qualified name:

```bash
brew install fam-tung-lam/tap/<formula>
```

Alternatively, tap the complete repository and use short Formula names:

```bash
brew tap fam-tung-lam/tap
brew install <formula>
```

In a `Brewfile`:

```ruby
tap "fam-tung-lam/tap"
brew "<formula>"
```

## Homebrew documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
