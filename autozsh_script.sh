
#!/bin/bash
set -e  # Exit script if any command fails

echo "We will install Zsh."
echo "Please provide your password when prompted."

sleep 4
sudo apt install -y zsh

echo "Checking if curl is installed..."
if ! command -v curl &> /dev/null; then
    echo "Curl not found! Installing curl..."
    sudo apt install -y curl
fi

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Adding the Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

echo -e "\n➡️  Open ~/.zshrc, find the line that sets ZSH_THEME, and change it to 'powerlevel10k/powerlevel10k'."
read -p "Press Enter when you're done..."

echo "Adding Zsh Autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

echo -e "\n➡️  Open ~/.zshrc, find 'plugins=()', and add 'zsh-autosuggestions'."
read -p "Press Enter when you're done..."

echo "Adding Fast Syntax Highlighting..."
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting"

echo -e "\n➡️  Open ~/.zshrc, find 'plugins=()', and add 'fast-syntax-highlighting'."
read -p "Press Enter when you're done..."

echo -e "\n✅ Installation complete! Now switching to Zsh..."

# Switch to Zsh for this session
exec zsh
