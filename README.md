# AutoZsh Setup Script

## Overview

This script automates the process of installing Zsh and setting up Oh My Zsh with popular plugins, including Powerlevel10k and Zsh Autosuggestions. If you're like me and often need to install Zsh on new devices, this script will save you time by automating the basic setup.
## Prerequisites

This script is designed to run on systems with bash and sudo access.

    Make sure curl is installed on your system.

## How to Use

    Download the Script: Download the autozsh_script.sh to your desired location.

    Make the Script Executable: Open a terminal and navigate to the folder where the script is located, then run:

- chmod +x autozsh_script.sh

Run the Script: After making it executable, run the script with the following command:

- ./autozsh_script.sh

    This will automatically:

        Install Zsh if it’s not already installed.

        Install Oh My Zsh.

        Set up the Powerlevel10k theme.

        Install the Zsh Autosuggestions plugin.

        Install Fast Syntax Highlighting.

        Reload your shell to apply the changes.

## Steps Automated by the Script

    Install Zsh

    Install Oh My Zsh

    Install Powerlevel10k Theme

    Install Zsh Autosuggestions

    Install Fast Syntax Highlighting

## Customization

After running the script, open your ~/.zshrc and customize your environment by:

    Setting your ZSH_THEME to "powerlevel10k/powerlevel10k".

    Adding plugins like zsh-autosuggestions and fast-syntax-highlighting.


## License

This script is provided as-is with no warranty. Use at your own risk.
