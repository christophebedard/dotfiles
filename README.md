# dotfiles

Personal repo of config files

## Install basic packages and config files

```shell
$ ./install.sh
```

## Software list

* Chrome https://www.google.com/chrome/
* KeePass https://keepass.info/download.html
* VS Code https://code.visualstudio.com/download
* GitKraken https://www.gitkraken.com/download
* Spotify https://www.spotify.com/download/linux/
* OneDrive https://github.com/abraunegg/onedrive
* Zotero https://www.zotero.org/download/
* TeXstudio: https://www.texstudio.org/#download
* Slack
* Discord

## Other

### Add SSH key to local server

```shell
$ ssh-copy-id chris@server -p 1234
```

### Set shortcuts to play/pause music

1. Select Settings -> Keyboard Shortcuts
1. Scroll to the bottom, click '+'
1. Enter any Name: Play or pause Spotify
1. Paste in the Command: dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
1. Click Apply
1. Click Disabled on the right so it changes to New Shortcut...
1. Press the Pause/Break key
1. Click Close
1. Listen to music in Spotify and press the Pause/Break key to pause or play the music.

### Configure Apple keyboard on Ubuntu

Configure it to disable FN keys and to swap option and command keys.

```shell
$ cp config/hid_apple.conf /etc/modprobe.d/
$ sudo update-initramfs -u
```
