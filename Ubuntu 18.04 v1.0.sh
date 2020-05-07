##############################
# Version: Ubuntu 18.04 v1.0 #
##############################

sudo apt update #更新套件庫清單

echo "#################### Finish apt update !!! ####################"

#apt
for apt_list in python3 python python-pip python3-pip git tmux nasm vim gdb figlet toilet
do
	sudo apt install ${apt_list} -y

    echo "#################### Finish ${apt_list} !!! ####################"
done

#brew
# for brew_list in zsh
# do 
#     brew install ${brew_list}

#     echo "#################### Finish ${brew_list} !!! ####################"
# done

#pip
for pip_list in pwntools
do 
    sudo pip install ${pip_list} -y

    echo "#################### Finish ${pip_list} !!! ####################"
done

#pip3
for pip3_list in python-nmap 
do
	sudo pip3 install ${pip3_list} -y

    echo "#################### Finish ${pip3_list} !!! ####################"
done

#GDB-Peda
git clone https://github.com/scwuaptx/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
cp ~/peda/.inputrc ~/
echo "#################### Finish GDB-Peda !!! ####################"

#Radare2
git clone https://github.com/radare/radare2.git
radare2/sys/install.sh
echo "#################### Finish Radare2 !!! ####################"
