
rule Trojan_BAT_Nanocore_AAPH_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.AAPH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 05 03 02 8e 69 6f 90 01 01 00 00 0a 0a 2b 00 06 2a 90 00 } //3
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 43 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 72 00 65 00 61 00 74 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 65 00 49 00 6e 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 73 00 74 00 61 00 6e 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 24 00 63 00 65 00 } //1 $$$$$$$$$$C$$$$$$$$$$$$reat$$$$$$$eIn$$$$$$$$$$stan$$$$$$$$$$$ce
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}