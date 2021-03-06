#!/bin/sh

if [ -e ~/.vimrc -o -e ~/.vim ]; then
	echo "경고: 설치를 진행하려면 ~/.vim/ 디렉토리와 ~/.vimrc 파일을 삭제해야 합니다."
	exit
fi

echo "심볼릭 릭크 생성..."
ln -sfv ~/.vimconfig/vimrc ~/.vimrc

echo "plug 다운로드중..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/colors
cp ./colors/CodeSchool3.vim ~/.config/nvim/colors/

echo "vundle 설치중..."
vim -c :PlugInstall -c :qa

echo "rtags 설치중..."
mkdir ~/.rdm
ln -sfv ~/.vimconfig/rdmrc ~/.rdmrc

