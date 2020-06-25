clear
mpg123 bgm.mp3 -q &
sleep 2
clear
sleep 2

hp=10
while [ $hp -ge 1 ]
do
 printf "%*s\n" $(( ($(tput cols) + $(printf 敵が現れた | wc -c)) / 2 )) 敵が現れた
 echo
 echo
 cat nubesuko.txt
 echo
 echo
 echo  -e "\033[5mヌベスコ\033[0m"
 echo
 echo  -e "\033[5mLV.114514\033[0m"
 echo
 echo "========================================="
 sleep 0.03
 echo "|                                       |"
 sleep 0.03
 echo "|<<<→→→****エンターキーで戦う****←←←>>> |"
 sleep 0.03
 read -p "Hit enter(強制): "
 echo "==========================================="
 sleep 0.01
 echo "|武器を選択（しなさい)                    |"
 sleep 0.01
 echo "|1、nano                                  |"
 sleep 0.01
 echo "|2、sl                                    |"  
 sleep 0.01
 echo "|3、殴る                                  |"
 sleep 0.01
 echo "==========================================="
 sleep 0.01
 echo 敵hp：$hp
 echo -n INPUT_STR: 
 read str 
 echo $str

 if [ $str = 1 ]; then
   nano nubesuko-nano.txt
   text=$(<nebesuko-nano.txt)
  
   if [ -z "$text"  ] ; then
   clear
     echo "ヌベスコはテキストエディターに殺された"
     echo '(՞ةڼ◔ ) <<一回殺しても復活するよ' > nubesuko-nano.txt
     hp=$((hp-100))
   else
     echo "$text"
     echo '(՞ةڼ◔ )' > nubesuko-nano.txt
     hp=$((hp-10))
   fi
  

 elif [ $str = 2 ]; then
   sl
   echo "ヌベスコはSLに轢かれ死んでしまった。"
   sleep 5
   echo "(՞ةڼ◔ ) <<お前"
   sleep 2
   echo "(՞ةڼ◔ ) <<天国で呪ってやる"
   hp=$((hp-1000))
 elif [ $str = 3 ]; then
   echo "(՞ةڼ◔ ) <<傷害罪です。"
   sleep 2
   hp=$((hp-1))
 else
   echo "(՞ةڼ◔ ) <<無効な選択肢、お前の諭吉が泣いている"
   sleep 2
 fi
 clear
done

#pkill mpg123
#sleep 2.5

clear
./purius.sh