#!/bin/bash

echo "Checking rust and cargo"

if curl --version > /dev/null; then
	echo "curl is already installed."
	echo "installing rust and cargo"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
else
	echo "curl is not installed"
	if brew -v > /dev/null; then
		echo "brew is already installed."
		echo "Next: Install curl"
		brew install curl
		echo "Next: Install Rust and Cargo"
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	else
		echo "brew is not installed."
		echo "Next: Install Homebrew"
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
		echo "Next: Install curl"
		brew install curl
		echo "Next: Install Rust and Cargo"
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	if
fi
