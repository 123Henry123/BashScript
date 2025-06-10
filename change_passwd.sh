#!/bin/bash
read -p "who's password do you want to change? " user

read -p "what is the new password? " new_passwd

read -p "whats is your LDAP password? " $passwd

dn="uid=$username,cn=users,dc=zoo,dc=local"

password=$(sudo slappasswd -s $new_passwd)


cat <<EOF > /ldap-setup/BashScript/user.ldif
dn: $dn
userPassword: $password


ldapmodify -x -D "cn=admin,dc=zoo,dc=local" -w $passwd -f change_passwd.ldif
