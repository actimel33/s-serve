#!/bin/bash

echo -e "\n Operatin system"
grep "PRETTY_NAME" /etc/os-release | cut -d '"' -f2

echo -e "\n Users with bash shell"
grep "bash" /etc/passwd | cut -d: -f1

echo -e "\n Open ports"
ss -tuln | awk 'NR>1 {split($5, a, ":"); print a[length(a)]}' | sort -u


