#!/bin/sh
if [ -z "$1" ]; then
  echo "Starting up visudo with this script as first parameter"
  export EDITOR=$0 && sudo -E visudo
else
  echo "Changing sudoers"
  echo '%linuxadmins ALL=(ALL:ALL) ALL' >> $1
fi

### The last echo line adds the "linuxadmins" domain security group to the sudoers list. Change the name if you need to add another/different domain group. Active Directory Security Groups with spaces in their names will not work unless you format the name correctly and I am honestly not sure what the syntax is. Perhaps using a ^ for spaces will work?