#! /bin/bash
echo "automacao"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -s /bin/bash -m -p $(openssl passwd Senha123)
passwd carlos -e
gpasswd -a carlos GRP_ADM

useradd maria -s /bin/bash -m -p $(openssl passwd Senha123)
passwd maria -e
gpasswd -a maria GRP_ADM

useradd joao -s /bin/bash -m -p $(openssl passwd Senha123)
passwd joao -e
gpasswd -a joao GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd Senha123)
passwd debora -e
gpasswd -a debora GRP_VEN

useradd sebastiana -s /bin/bash -m -p $(openssl passwd Senha123)
passwd sebastiana -e
gpasswd -a sebastiana GRP_VEN

useradd roberto -s /bin/bash -m -p $(openssl passwd Senha123)
passwd roberto -e
gpasswd -a roberto GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd Senha123)
passwd josefina -e
gpasswd -a josefina GRP_SEC

useradd amanda -s /bin/bash -m -p $(openssl passwd Senha123)
passwd amanda -e
gpasswd -a amanda GRP_SEC

useradd rogerio -s /bin/bash -m -p $(openssl passwd Senha123)
passwd rogerio -e
gpasswd -a rogerio GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm /ven /sec

