# Bash-locker

## What is it?
This script will add basic and simple authorization feature using bash for the shell. (It works and functions best on Termux)

## Features 
Currently, this script only has 2 features
* Basic password authorization
* A simple rate-limiter

## Installation
### Termux
To install it, you need to have git installed first with `pkg install git`. After that, you can do:

1. `git clone https://github.com/nunoguevara/Bash-locker.git`
  
2. Customize and configure the script first within `Bash-locker` directory

3. Check if the script runs properly after configuration by `exec [yourdirectory]`

4. If it works, put `exec [yourdirectory]` into the `~/.bash_profile` using text editor, and make sure it's placed on the 1st line

5. Run `source ~/.bash_profile` on the terminal

Now you already installed Bash-locker and it will be activated to ask your authorization whenever you open Termux.


[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
