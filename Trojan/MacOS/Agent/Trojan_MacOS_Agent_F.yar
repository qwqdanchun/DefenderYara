
rule Trojan_MacOS_Agent_F{
	meta:
		description = "Trojan:MacOS/Agent.F,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {26 26 20 72 6d 20 2d 72 66 20 27 2f 55 73 65 72 73 2f 90 02 a0 2f 4c 69 62 72 61 72 79 2f 53 61 76 65 64 20 41 70 70 6c 69 63 61 74 69 6f 6e 20 53 74 61 74 65 2f 63 6f 6d 2e 61 70 70 6c 65 2e 54 65 72 6d 69 6e 61 6c 2e 73 61 76 65 64 53 74 61 74 65 90 00 } //2
		$a_01_1 = {70 72 69 6e 74 66 20 27 1b 5b 38 3b 31 3b 31 74 27 20 26 26 20 70 72 69 6e 74 66 20 27 1b 5b 32 74 27 } //2
		$a_03_2 = {3c 6b 65 79 3e 52 75 6e 41 74 4c 6f 61 64 3c 2f 6b 65 79 3e 90 02 a0 3c 74 72 75 65 2f 3e 90 02 a0 3c 6b 65 79 3e 4b 65 65 70 41 6c 69 76 65 3c 2f 6b 65 79 3e 90 00 } //1
		$a_00_3 = {6b 69 6c 6c 61 6c 6c 20 54 65 72 6d 69 6e 61 6c } //1 killall Terminal
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1) >=5
 
}