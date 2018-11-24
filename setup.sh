echo "Setting up dotfiles..."

echo "-- Install Deps --"

echo "-> Install zsh..."

sudo apt install zsh -y

echo "-> Deploy oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "-- Setup configs --"

echo "-> Create zsh custom directories"

sudo mkdir /etc/ohmyzsh
sudo mkdir /etc/ohmyzsh/custom
sudo mkdir /etc/ohmyzsh/custom/themes

echo "--> /etc/ohmyzsh/custom/themes created."

echo "-> Copy zshrc"

cp src/zshrc ~/.zshrc

echo "-> Copy tmux.conf"

cp src/tmux.conf ~/.tmux.conf

echo "-- Installing zsh theme --"

sudo curl -o /etc/ohmyzsh/custom/themes/zero.zsh-theme https://gitlab.com/snippets/1778883/raw

echo "Finished."
