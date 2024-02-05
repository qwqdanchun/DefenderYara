
rule Backdoor_BAT_CrimsonRat_C_MTB{
	meta:
		description = "Backdoor:BAT/CrimsonRat.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 10 00 00 0a 00 "
		
	strings :
		$a_80_0 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 7c } //SOFTWARE\Microsoft\Windows\CurrentVersion\Run|  0a 00 
		$a_02_1 = {4c 00 45 00 5f 00 41 00 55 00 90 02 02 54 00 4f 00 3c 00 21 00 90 0a 1e 00 3c 00 46 00 49 00 90 00 } //0a 00 
		$a_02_2 = {4c 45 5f 41 55 90 02 02 54 4f 3c 21 90 0a 1e 00 3c 46 49 90 00 } //01 00 
		$a_80_3 = {73 65 74 5f 43 6c 69 65 6e 74 53 69 7a 65 } //set_ClientSize  01 00 
		$a_80_4 = {63 73 63 72 65 65 6e } //cscreen  01 00 
		$a_80_5 = {2e 65 78 65 7c } //.exe|  01 00 
		$a_02_6 = {53 00 63 00 72 00 65 00 65 00 6e 00 90 0a 18 00 63 00 61 00 70 00 90 00 } //01 00 
		$a_02_7 = {53 63 72 65 65 6e 90 0a 18 00 63 61 70 90 00 } //01 00 
		$a_02_8 = {66 00 6f 00 3d 00 75 00 7a 00 90 02 02 65 00 72 00 7c 00 90 0a 1e 00 69 00 6e 00 90 00 } //01 00 
		$a_02_9 = {66 6f 3d 75 7a 90 02 02 65 72 7c 90 0a 1e 00 69 6e 90 00 } //01 00 
		$a_80_10 = {63 6c 70 69 6e 67 } //clping  01 00 
		$a_80_11 = {6b 65 65 72 75 6e } //keerun  01 00 
		$a_80_12 = {75 73 62 72 75 6e } //usbrun  01 00 
		$a_80_13 = {63 6c 72 6b 6c 67 } //clrklg  01 00 
		$a_80_14 = {67 65 74 61 76 73 } //getavs  01 00 
		$a_80_15 = {72 75 70 74 68 } //rupth  00 00 
	condition:
		any of ($a_*)
 
}