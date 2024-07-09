
rule Backdoor_Linux_Neko_ab_MTB{
	meta:
		description = "Backdoor:Linux/Neko.ab!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_02_0 = {62 75 73 79 62 6f 78 20 77 67 65 74 20 2d 67 20 [0-03] 2e [0-03] 2e [0-03] 2e [0-03] 20 2d 6c 20 2f 74 6d 70 2f [0-10] 20 2d 72 20 2f [0-10] 2f [0-10] 2e 6d 69 70 73 3b 63 68 6d 6f 64 20 37 37 37 20 2f 74 6d 70 2f [0-10] 3b 2f 74 6d 70 2f [0-10] 20 [0-10] 2e 6d 69 70 73 3b 72 6d 20 2d 72 66 20 2f 74 6d 70 2f } //1
		$a_02_1 = {73 68 65 6c 6c 3f 63 64 20 2f 74 6d 70 3b 20 77 67 65 74 20 68 74 74 70 3a 2f 5c 2f [0-03] 2e [0-03] 2e [0-03] 2e [0-03] 2f [0-10] 2f [0-10] 2e 61 72 6d 3b 20 63 68 6d 6f 64 20 37 37 37 20 90 1b 05 2e 61 72 6d 3b 20 2e 2f 90 1b 05 2e 61 72 6d [0-15] 61 72 6d 34 3b 72 6d 20 2d 72 66 20 90 1b 05 2e 61 72 6d } //1
		$a_00_2 = {51 42 6f 74 42 6c 61 64 65 53 50 4f 4f 4b 59 } //1 QBotBladeSPOOKY
		$a_00_3 = {54 73 75 6e 61 6d 69 } //1 Tsunami
		$a_00_4 = {43 6f 72 6f 6e 61 } //1 Corona
		$a_00_5 = {74 72 6f 6a 61 6e } //1 trojan
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}