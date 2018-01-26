## Scripts
Hello, this is a simple script to chech in a sigle line the cpu freq, cpu temp and uptime to all your working machines.
Fell free to change the script to all you preferences.
I made this script because i have 8 Raspberry Pi that are mining and i didnt want to check the temp by connecting 
manually to each one so i run the script from 1 and its checking to all 8 of them.
You need to clone this script to all your pi's/working stations, see the instruction below. Enjoy! 



## Table of contents
<li> <a href="#overview">Overview</a> </li>
<li> <a href="#download">Download</a> </li> 
<li> <a href="#permisions">Permisions</a> </li>
<li> <a href="#use">Use </a></li>
<li> <a href="#setup">Setup </a></li>
  
 # Overview
 To run this script you need to clone it first and after that you need to give permision to the script then you 
 need to run the ./verify.sh 
 
 # Download
 <li> Git tree: https://github.com/dury10/scripts </li>
 <li> Clone with `git clone https://github.com/dury10/scripts`</li>
   
 # Permisions
 <li> chmod +x check.sh </li>
 <li> chmod +x verify.sh </li>
 
 # Use
 <li> ./check.sh </li>  this line will allow to check the curent status of the actual machine.
 <li> ./verify.sh </li> this line will allow to check the curent status to all your working machines.
  
 # Setup
 To make this script to work you need to change the host name for all your machine
 If you have 3 you need to name them pi0, pi1, pi2
 This script its made for 8 but you can add more or less 
 you can add the nr of the pis bi editing verify.sh
 to edit you can use `nano verify.sh`
 edit this line `for I in 0 1 2 3 4 5 6 7 ;` and add or remove so if you have only 3 pi's you should have
 a line like this `for I in 0 1 2 ;` if you have 10 pi's `for I in 0 1 2 3 4 5 6 7 8 9 ;`
 
 Now the most important thing its to set your hostname for each pi for this you need to change this
 `sudo nano /etc/hosts`
 and you will have this
 ```
 
127.0.1.1       raspberry
127.0.0.1       localhost
::1             localhost ip6-localhost ip6-loopback
ff02::1         ip6-allnodes
ff02::2         ip6-allrouters
```
and you need to change the first line  `127.0.1.1       raspberry` to `127.0.1.1       pi0`

We need to change the hostname also here
`sudo nano /etc/hostname`
here again you will have as default the name raspberry and you need to change it to the name that you want to give it to your worker

after you have changed this you need to reboot to take effect 
`sudo reboot`

Now you changed the host name from raspberry to pi0 now you need to do this to all your pi's and put pi1,pi2,pi3 or whattever name you want
but you have to change also the script the script is made default to work with user pi and the host names from pi0 to pi8.




    
 
