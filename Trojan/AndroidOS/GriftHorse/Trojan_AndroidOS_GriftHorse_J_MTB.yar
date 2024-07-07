
rule Trojan_AndroidOS_GriftHorse_J_MTB{
	meta:
		description = "Trojan:AndroidOS/GriftHorse.J!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,0f 00 0f 00 03 00 00 "
		
	strings :
		$a_03_0 = {03 00 0c 03 12 10 6e 20 90 01 02 03 00 54 23 90 02 15 22 00 90 02 45 6e 20 90 01 02 03 00 54 23 90 02 15 22 00 90 01 02 70 20 90 02 10 6e 20 90 01 02 03 00 6e 10 90 01 02 02 00 0c 03 54 20 90 01 02 71 20 90 01 02 03 00 54 23 90 02 15 22 00 90 01 02 70 10 90 01 02 00 00 1a 01 90 01 02 6e 20 90 01 02 10 00 90 02 15 0c 01 6e 20 90 01 02 10 00 6e 10 90 01 02 00 00 0c 00 6e 20 90 01 02 03 00 90 00 } //10
		$a_03_1 = {32 00 14 03 90 01 03 7f 6e 20 90 01 02 32 00 6e 10 90 01 02 02 00 0c 03 6e 10 90 01 02 03 00 6e 10 90 01 02 02 00 0c 03 1a 00 90 01 02 12 01 6e 30 90 01 02 03 01 0a 03 38 03 90 01 02 6e 10 90 01 02 02 00 14 03 90 01 03 7f 6e 20 90 01 02 32 00 0c 03 1f 03 90 01 02 6e 10 90 01 02 03 00 0c 00 12 11 6e 20 90 01 02 10 00 22 00 90 01 02 70 10 90 01 02 00 00 6e 20 90 01 02 03 00 22 00 90 01 02 70 10 90 01 02 00 00 6e 20 90 01 02 03 00 6e 10 90 01 02 02 00 0c 00 71 20 90 01 02 30 00 1a 00 90 01 02 6e 20 90 01 02 03 00 90 00 } //10
		$a_03_2 = {70 73 3a 2f 2f 64 90 02 17 2e 63 6c 6f 75 64 66 72 6f 6e 74 2e 6e 65 74 2f 63 6f 6d 2e 90 02 35 2e 68 74 6d 6c 90 00 } //5
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*5) >=15
 
}