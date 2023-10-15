#!/bin/bash


typeText() {
	local length="${#1}"
	for ((i = 0; i < length; i++)); do
		echo -n "${1:$i:1}"
		sleep 0.05
	done
}

typeText "

	Hello I am Janx
	I'm your virtual assitant 
	for the setting up your workspace

"
for (( i=0; i<${#STARTUP_TEXT}; i++ ));
do
	echo -n "${STARTUP_TEXT:$i:1}"
	sleep 0.05
done

# oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# for setup powerlevel10k
# https://medium.com/@shivam1/make-your-terminal-beautiful-and-fast-with-zsh-shell-and-powerlevel10k-6484461c6efb

# direnv
curl -sfL https://direnv.net/install.sh | bash

# vim
sudo apt install vim

# neovim
curl -L -o nvim-linux64.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
mv nvim-linux64 ~/.nvim
ln -s ~/.nvim/bin/nvim ~/.local/bin/nvim


# node
sudo apt install nodejs
node -v

# npm
sudo apt install npm
npm -v

# yarn 
npm install --global yarn
npm -v

# pnpm 
sudo npm install -g @pnpm/exe

# go
wget https://go.dev/dl/go1.21.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.1.linux-amd64.tar.gz
if [ - f .bashrc ];then 
	echo -e >> .bashrc
        echo "#go" >> .bashrc
        echo "export GOPATH=\"\$HOME/go\"" >> .bashrc
        echo "export PATH=\$PATH:\$GOPATH/bin" >> .bashrc
elif [ - f .zshrc ];
	echo -e >> .zshrc
        echo "#go" >> .zshrc
        echo "export GOPATH=\"\$HOME/go\"" >> .zshrc
        echo "export PATH=\$PATH:\$GOPATH/bin" >> .zshrc
fi
go version

# bee
go get github.com/astaxie/beego
go install github.com/beego/bee/v2@latest

# vim
sudo apt install -y vim

# neovim 
sudo apt install -y neovim

# aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# aws codecommit
sudo pip install git-remote-codecommit

# configure sso and configure profile 
aws configure sso
aws configure sso --profile 1courier
