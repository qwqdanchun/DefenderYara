
rule Trojan_Linux_LateralMovement_B_Script{
	meta:
		description = "Trojan:Linux/LateralMovement.B!Script,SIGNATURE_TYPE_CMDHSTR_EXT,ffffffeb 00 ffffffeb 00 0f 00 00 "
		
	strings :
		$a_00_0 = {73 00 73 00 68 00 20 00 } //50 ssh 
		$a_02_1 = {68 00 74 00 74 00 70 00 90 02 02 3a 00 2f 00 2f 00 90 00 } //100
		$a_00_2 = {42 00 61 00 74 00 63 00 68 00 4d 00 6f 00 64 00 65 00 } //50 BatchMode
		$a_00_3 = {63 00 75 00 72 00 6c 00 20 00 } //25 curl 
		$a_00_4 = {77 00 67 00 65 00 74 00 20 00 } //25 wget 
		$a_00_5 = {7c 00 73 00 68 00 } //10 |sh
		$a_00_6 = {7c 00 20 00 73 00 68 00 } //10 | sh
		$a_00_7 = {7c 00 62 00 61 00 73 00 68 00 } //10 |bash
		$a_00_8 = {7c 00 20 00 62 00 61 00 73 00 68 00 } //10 | bash
		$a_00_9 = {7c 00 64 00 61 00 73 00 68 00 } //10 |dash
		$a_00_10 = {7c 00 20 00 64 00 61 00 73 00 68 00 } //10 | dash
		$a_00_11 = {7c 00 63 00 73 00 68 00 } //10 |csh
		$a_00_12 = {7c 00 20 00 63 00 73 00 68 00 } //10 | csh
		$a_00_13 = {7c 00 7a 00 73 00 68 00 } //10 |zsh
		$a_00_14 = {7c 00 20 00 7a 00 73 00 68 00 } //10 | zsh
	condition:
		((#a_00_0  & 1)*50+(#a_02_1  & 1)*100+(#a_00_2  & 1)*50+(#a_00_3  & 1)*25+(#a_00_4  & 1)*25+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*10+(#a_00_13  & 1)*10+(#a_00_14  & 1)*10) >=235
 
}