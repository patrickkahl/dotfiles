# https://www.chriswrites.com/update-apps-and-macos-without-ever-launching-the-app-store/
#!/bin/bash
brew update
brew upgrade
brew cleanup -s
#now diagnotic
brew doctor
brew missing

mas upgrade

softwareupdate -i -a
