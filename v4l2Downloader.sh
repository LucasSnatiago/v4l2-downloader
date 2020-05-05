#!/bin/bash

clear

senhaRoot=0

echo 'Logue com sua senha de root para instalar o v4l2loopback'
sudo echo 'Pegando senha de sudo' > /dev/null && senhaRoot=1

if [ ${senhaRoot} -eq 1 ]
then
    cd /tmp
    mkdir v4l2
    cd v4l2

    wget -O v4l2.zip 'https://github.com/umlaeute/v4l2loopback/archive/master.zip'

    unzip v4l2.zip
    cd v4l2loopback-master
    make && sudo make install && sudo depmod -a && echo 'Sucesso! A instalação foi finalizada!'
else
    echo 'Erro ao pegar a senha de administrador!'
    echo ''
    echo 'Tente novamente inserir a senha de administrador!'
fi
