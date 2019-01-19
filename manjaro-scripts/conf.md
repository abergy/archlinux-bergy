## Configuration

- Multitouch
	- /etc/X11/xorg.conf.d/30-touchpad.conf
	- 	Section "InputClass"
		    Identifier "touchpad"
		    Driver "libinput"
		    MatchIsTouchpad "on"
		    Option "Tapping" "on"
		    Option "NaturalScrolling" "true"
		    Option "ClickMethod" "clickfinger"
		    Option "AccelProfile" "flat"
		EndSection
	- /etc/X11/xorg.conf.d/30-pointer.conf
	-	Section "InputClass"
		    Identifier "pointer"
		    Driver "libinput"
		    MatchIsPointer "on"
		    Option "NaturalScrolling" "true"
		EndSection


- Energieverwaltung
- Daul Monitor 
- Git
    - $ git config --global user.name "John Doe"
    - $ git config --global user.email johndoe@example.com 
- Keepass
    - Kee + KeepasRPC.plgx
- WLAN Drivers MacBook Pro 2012 Early
    - linux419-broadcom-wl
- conky
	- conky -C > ~/.config/conky/.conkyrc
	- conky -c ~/.config/conky/.conkyrc
- cpupower
	- /etc/default/cpupower -> governor='powersave'
	- systemctl enable cpupower


    

