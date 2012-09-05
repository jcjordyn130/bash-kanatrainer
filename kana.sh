#!/bin/bash
#Alex's Kana trainer alpha0.91 (fork of my [internal] pre-alpha Hiratrainer)
#Ideas of script skeleton taken from http://tldp.org/LDP/abs/html/randomvar.html
#License: This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/.

echo -n "hira or kata?: "
read -e choice

hiras="あ,a い,i う,u え,e お,o か,ka き,ki く,ku け,ke こ,ko さ,sa し,shi す,su せ,se そ,so た,ta ち,chi つ,tsu て,te と,to な,na に,ni ぬ,nu ね,ne の,no は,ha ひ,hi ふ,fu へ,he ほ,ho ま,ma み,mi む,mu め,me も,mo や,ya ゆ,yu よ,yo ら,ra り,ri る,ru れ,re ろ,ro わ,wa を,wo ん,n"

katas="ア,a イ,i ウ,u エ,e オ,o カ,ka キ,ki ク,ku ケ,ke コ,ko サ,sa シ,shi ス,su セ,se ソ,so タ,ta チ,chi ツ,tsu テ,te ト,to ナ,na ニ,ni ヌ,nu ネ,ne ノ,no ハ,ha ヒ,hi フ,fu ヘ,he ホ,ho マ,ma モ,mi ム,mu メ,me モ,mo ヤ,ya ユ,yu ヨ,yo ラ,ra リ,ri ル,ru レ,re ロ,ro ワ,wa ヲ,wo ン,n"

while :
do
if [ $choice == hira ];
then
hira=($hiras)
num_hiras=${#hira[*]}
hira_in=$(echo ${hira[$((RANDOM%num_hiras))]})
echo $hira_in | cut -d , -f 1 -
echo -n "Romaji?: "
read -e ans
rom=$(echo $hira_in | cut -d , -f 2 -)
if [ $rom == $ans ];
	then
	echo "Correct!"
	else
	echo "Sorry, it was $rom."
fi
else
kata=($katas)
num_katas=${#kata[*]}
kata_in=$(echo ${kata[$((RANDOM%num_katas))]})
echo $kata_in | cut -d , -f 1 -
echo -n "Romaji?: "
read -e ans
rom=$(echo $kata_in | cut -d , -f 2 -)
if [ $rom == $ans ];
        then
        echo "Correct!"
        else
        echo "Sorry, it was $rom."
fi
fi
done
