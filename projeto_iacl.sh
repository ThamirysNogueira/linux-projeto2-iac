#!/bin/bash 

echo "Criando diretórios..."

mkdir publico adm ven sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando e adicionando usuários nos grupos existentes..."

#Usuários ADM
useradd carlos -c "Carlos ADM" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_ADM
useradd maria -c "Maria ADM" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_ADM
useradd joao -c "João ADM" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_ADM

#Usuários de Vendas
useradd debora -c "Débora Vendas" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Vendas" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_VEN
useradd roberto -c "Roberto Vendas" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_VEN

#Usuários de Secretariado
useradd josefina -c "Josefina Secretariado" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_SEC
useradd amanda -c "Amanda Secretariado" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_SEC
useradd rogerio -c "Rogério Secretariado" -m -s /bin/bash -p $(openssl passwd Projeto123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# users do grupo têm permissão total de seu respectivo diretório
# outros permissão negada
# todos têm permissão total no diretório público
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
