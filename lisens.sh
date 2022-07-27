#!/bin/bash
clear
echo -e " Input User Client Name"
read -rp "User: " -e user
read -rp "Limit Install: " -e limit
read -rp "Expired (days): " -e exp
Input_License_Key=$(openssl rand -base64 32)
Key="$Input_License_Key"

# // Algoritma Key
algoritmakeys="1920192019209129403940293013912"
hashsuccess="$(echo -n "$Key" | sha256sum | cut -d ' ' -f 1)"
Sha256Successs="$(echo -n "$hashsuccess$algoritmakeys" | sha256sum | cut -d ' ' -f 1)"
License_Key=$Sha256Successs

mkdir -p /root/akses
git clone https://github.com/bokir-tampan/test.git /root/akses/ &> /dev/null
echo -e "$License_Key $limit $exp 1 1 Pro $user" >> /root/akses/validated-registered-license-key.txt
    cd /root/akses
    git config --global user.email "moving.headers@gmail.com" &> /dev/null
    git config --global user.name "bokir-tampan" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/bokir-tampan/test
    git push -f https://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@github.com/bokir-tampan/test.git &> /dev/null

cd
clear
echo -e "==============================="
echo -e "Lisensi Client  = $Input_License_Key"
echo -e "Expired         = $exp"
echo -e "Limit Install   = $limit"
echo -e "User Client     = $user"
echo -e "==============================="
rm -rf  /root/akses &> /dev/null
