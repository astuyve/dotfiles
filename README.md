# New machine setup guide
These are personal notes for me, but they may help others, so it's in a public repo.

# Machine
1. Install Karabiner Elements
    - `caps` -> `left control`
    - `Vi Mode [S as Trigger Key]`
2. Install [homebrew]
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
4. Install [Iterm 2](https://iterm2.com/)
5. Install [Oh My ZSH](https://ohmyz.sh)
```
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
6. Install tmux
```
brew install tmux
```
7. Install [GPG Tools](https://gpgtools.org/)
8. System Preferences
    - Shortest key repeat delay
    - Keyboard -> Shortcuts -> Mission Control (set left and right to `^H` and `^L`)
    - Keyboard -> hide region from taskbar
    - Battery -> Show percentage

# Github
1. Log in
2. Add new SSH key via [this guide](https://kbroman.org/github_tutorial/pages/first_time.html)
3. Create new GPG Key with GPG tools.
    - Upload new key to github
    - Configure global [commit signing](https://medium.com/@rwbutler/signing-commits-using-gpg-on-macos-7210362d15)
4. Set up SSH locally, verify github connection
5. Clone this repo!

Full setup:
```
# Git config
git config --global user.name "AJ Stuyvenberg"
git config --global user.email "john.appleseed@example.com"

# Create new SSH Key
$ ssh-keygen -t rsa -C "your_email@example.com"

# Copy to clipboard
$ pbcopy < ~/.ssh/id_rsa.pub

# Upload to github, verify/revoke old keys.
# Test:
ssh -T git@github.com

# List GPG keys
gpg --list-secret-keys --keyid-format LONG

# Copy ID, looks like this:
sec rsa4096/*543C1DB7EF341B87* // ID in stars

# Config key globally
git config --global user.signingkey 543C1DB7EF341B87

# Upload to github, then sign all commits
git config --global commit.gpgsign true
```

After cloing this repo, copy applicable tmux.conf and zshrc files.