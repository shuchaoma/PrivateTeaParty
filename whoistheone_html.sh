#!/bin/sh
#####################################
# Date: 2019/09/05
# Author: ShuchaoMa
# Email: shuchaoma@126.com
# Description: This is a friend program used to ask who is on duty.
#####################################

#### GLOBAL CONFIGURATION ###
friends[0]=shuge
friends[1]=taiyu
friends[2]=wangwang
friends[3]=jiaying
friends_num=${#friends[@]}

str_friends=$(echo ${friends[@]})

week_number=$(echo "$(date +%U) + 1"|bc)
remainder=$(expr $week_number % 4)

str_week=$(echo  "week_number is "$week_number". ")
str=$(echo ${friends[remainder]}" is on duty")
str_time="Now, The time is "$(date +%F)

##### GENERATE HTML #####
fileanme="./duty.html"
echo "<html>  
<head>
<title>PrivateTeaParty</title>
<style> 
body{text-align:center} 
</style> 
</head>
" > $fileanme

echo "
<body>
<h1>$str_time</h1>
<h2>$str_week</h2>
<font color="#FF0000"><h2>$str</h2></font>
</body>

</html>" >>$fileanme
