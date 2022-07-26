#!/bin/bash

echo "Creating directories...."
mkdir /publico /adm /ven /sec
echo "Done!!!"

echo "Creating user groups...."
groupadd GRP_ADM GRP_VEN GRP_SEC
echo "Done!!!"

echo "Creating users for ADM group...."
useradd carlos -c "adm_Carlos" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "adm_Maria" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "adm_Joao" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
passwd joao -e

echo "Creating users for VEN group"
useradd debora -c "ven_Debora" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd debora -e
useradd roberto -c "ven_Roberto" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd roberto  -e
useradd sebastiana -c "ven_Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
passwd sebastiana -e

echo "Creating users for SEC group"
useradd josefina -c "sec_Josefina" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "sec_Amanda" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd amanda  -e
useradd rogerio -c "sec_Rogerio" -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
passwd rogerio -e
echo "Done!!!"

echo "Specifying permissions"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finished!"
echo "All settings have been applied!"