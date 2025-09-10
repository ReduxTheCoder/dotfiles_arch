#!/bin/sh

echo "Making ~/dotfiles directory..."
mkdir -p ~/dotfiles

echo

echo "Is stow installed?"
echo "[y]: Yes"
echo "[n]: No"
read stow_installed

echo

case "$stow_installed" in
	"y")
		echo "Checking command path..."
		if command -v stow; then
			echo "Perfect, stowing dotfiles..."

			echo

			if [ ! -d "$HOME/my_dotfiles" ]; then
				echo "~/my_dotfiles does not exist, make sure the repo you cloned is in the home directory!"
				echo "When fixed, re-run this: sudo ~/my_dotfiles/installer.sh"
				echo "Exiting."
				echo
				exit 1
			fi

			mv ~/my_dotfiles/* ~/dotfiles/ 2>/dev/null
			mv ~/my_dotfiles/.[!.]* ~/dotfiles/ 2>/dev/null

			command cd ~/dotfiles || exit 1

			
			command stow *
		else
			echo "Stow is not installed..."
			echo "Please install stow first. and Re-run the script running this:"
			echo "sudo ~/my_dotfiles/installer.sh"
		fi
		;;
	"n")
		echo "Please install stow first. and Re-run the script running this:"
		echo "sudo ~/my_dotfiles/installer.sh"

		echo
		;;
esac