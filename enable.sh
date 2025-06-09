#!/bin/bash

read -p "Enter the username to deactivate: " username
read -s -p "Enter your LDAP admin password: " ldap_pass
echo

login_shell="/bin/$username"
user_dn="uid=$username,cn=users,dc=zoo,dc=local"

cat <<EOF > deactivate_user.ldif
dn: $user_dn
changetype: modify
replace: loginShell
loginShell: $login_shell
EOF

ldapmodify -x -D "cn=admin,dc=zoo,dc=local" -w "$ldap_pass" -f deactivate_user.ldif

rm -f deactivate_user.ldif

echo "User $username has been activated by setting loginShell to $login_shell."
