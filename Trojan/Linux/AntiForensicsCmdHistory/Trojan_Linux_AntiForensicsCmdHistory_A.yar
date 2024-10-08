
rule Trojan_Linux_AntiForensicsCmdHistory_A{
	meta:
		description = "Trojan:Linux/AntiForensicsCmdHistory.A,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 0a 00 0c 00 00 "
		
	strings :
		$a_00_0 = {48 00 49 00 53 00 54 00 43 00 4f 00 4e 00 54 00 52 00 4f 00 4c 00 3d 00 69 00 67 00 6e 00 6f 00 72 00 65 00 73 00 70 00 61 00 63 00 65 00 } //10 HISTCONTROL=ignorespace
		$a_00_1 = {48 00 49 00 53 00 54 00 43 00 4f 00 4e 00 54 00 52 00 4f 00 4c 00 3d 00 69 00 67 00 6e 00 6f 00 72 00 65 00 62 00 6f 00 74 00 68 00 } //10 HISTCONTROL=ignoreboth
		$a_00_2 = {75 00 6e 00 73 00 65 00 74 00 20 00 48 00 49 00 53 00 54 00 46 00 49 00 4c 00 45 00 } //10 unset HISTFILE
		$a_00_3 = {75 00 6e 00 73 00 65 00 74 00 20 00 48 00 49 00 53 00 54 00 4f 00 52 00 59 00 } //10 unset HISTORY
		$a_00_4 = {75 00 6e 00 73 00 65 00 74 00 20 00 48 00 49 00 53 00 54 00 53 00 41 00 56 00 45 00 } //10 unset HISTSAVE
		$a_00_5 = {75 00 6e 00 73 00 65 00 74 00 20 00 48 00 49 00 53 00 54 00 5a 00 4f 00 4e 00 45 00 } //10 unset HISTZONE
		$a_00_6 = {75 00 6e 00 73 00 65 00 74 00 20 00 48 00 49 00 53 00 54 00 4c 00 4f 00 47 00 } //10 unset HISTLOG
		$a_00_7 = {48 00 49 00 53 00 54 00 46 00 49 00 4c 00 45 00 3d 00 2f 00 64 00 65 00 76 00 2f 00 6e 00 75 00 6c 00 6c 00 } //10 HISTFILE=/dev/null
		$a_00_8 = {48 00 49 00 53 00 54 00 46 00 49 00 4c 00 45 00 53 00 49 00 5a 00 45 00 3d 00 30 00 } //10 HISTFILESIZE=0
		$a_00_9 = {48 00 49 00 53 00 54 00 53 00 49 00 5a 00 45 00 3d 00 30 00 } //10 HISTSIZE=0
		$a_00_10 = {68 00 69 00 73 00 74 00 6f 00 72 00 79 00 20 00 2d 00 63 00 } //10 history -c
		$a_00_11 = {73 00 65 00 74 00 20 00 2b 00 6f 00 20 00 68 00 69 00 73 00 74 00 6f 00 72 00 79 00 } //10 set +o history
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10) >=10
 
}