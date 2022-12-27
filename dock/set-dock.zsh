# set dock hide delay to zero
defaults write com.apple.dock autohide-delay -int 0
# set dock hide animation duration
defaults write com.apple.dock autohide-time-modifier -float 0.4 
# restart and apply
killall Dock
