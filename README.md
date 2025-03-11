# 🍷 Qwik Git Formula for Homebrew 🍺

Qwik Git (`qw`) is a convenient tool for automatically committing and pushing changes to Git with a timestamp. It simplifies working with Git, especially for quickly saving changes.

## 📦 Installation

```bash
brew tap andrewalevin/qwikgit
brew install qwikgit
```

## 🚀 Usage

Once installed, you can run Qwikgit using the following commands:
•	qw: Runs the qwikgit.
•	12: An alias that also runs the same qwikgit as qw.


```bash
qw                    # Auto-commit with a timestamp
qw Fix bug            # Commit with a timestamp and a custom message (works without quotes)
qw -v, --version      # Show version information
qw -h, --help         # Show help
```

or 

```bash
12                    # Auto-commit with a timestamp
12 Fix bug            # Commit with a timestamp and a custom message (works without quotes)
12 -v, --version      # Show version information
12 -h, --help         # Show help
```

## 🔄 Update

```bash
brew upgrade qwikgit
```

## 🛠 Developer Notes: Publishing a New Version

### Update the SHA256 checksum of the new script

```bash
curl -L https://raw.githubusercontent.com/andrewalevin/homebrew-qwikgit/main/scripts/qwikgit.sh | shasum -a 256
```

### Update the version in `qwikgit.rb`

Modify the `qwikgit.rb` file to reflect the new version and insert the new SHA256 checksum.

### Rebuild and test

```bash
brew reinstall --build-from-source qwikgit
```

### Commit and push changes

```bash
git add .
git commit -m "Release new version X.Y.Z"
git push
```

