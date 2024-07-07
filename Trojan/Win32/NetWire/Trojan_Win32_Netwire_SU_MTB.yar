
rule Trojan_Win32_Netwire_SU_MTB{
	meta:
		description = "Trojan:Win32/Netwire.SU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {54 00 72 00 61 00 6e 00 73 00 70 00 6c 00 61 00 6e 00 74 00 61 00 74 00 69 00 6f 00 6e 00 73 00 64 00 6f 00 6e 00 6f 00 72 00 65 00 6e 00 73 00 62 00 75 00 74 00 73 00 75 00 64 00 61 00 6e 00 76 00 65 00 64 00 6c 00 69 00 67 00 65 00 68 00 6f 00 6c 00 64 00 65 00 6e 00 65 00 73 00 6a 00 6f 00 76 00 69 00 6c 00 61 00 62 00 65 00 6e 00 75 00 72 00 6c 00 65 00 } //1 Transplantationsdonorensbutsudanvedligeholdenesjovilabenurle
		$a_01_1 = {48 00 41 00 50 00 54 00 45 00 4e 00 45 00 53 00 56 00 49 00 45 00 57 00 50 00 52 00 4f 00 44 00 55 00 4b 00 54 00 48 00 41 00 4e 00 44 00 4c 00 45 00 4e 00 43 00 4c 00 41 00 52 00 53 00 45 00 54 00 } //1 HAPTENESVIEWPRODUKTHANDLENCLARSET
		$a_01_2 = {46 00 6f 00 72 00 6d 00 69 00 64 00 6c 00 65 00 72 00 65 00 73 00 62 00 69 00 70 00 72 00 6f 00 64 00 75 00 6b 00 74 00 65 00 72 00 63 00 72 00 6f 00 77 00 62 00 65 00 6c 00 6c 00 65 00 6e 00 73 00 69 00 6c 00 61 00 74 00 65 00 6d 00 65 00 6e 00 6e 00 65 00 73 00 6b 00 65 00 61 00 6c 00 35 00 } //1 Formidleresbiproduktercrowbellensilatemenneskeal5
		$a_01_3 = {55 00 67 00 65 00 6e 00 6e 00 65 00 6d 00 73 00 6b 00 75 00 65 00 6c 00 69 00 67 00 68 00 65 00 64 00 65 00 72 00 64 00 6f 00 6d 00 73 00 6d 00 61 00 67 00 74 00 65 00 6e 00 73 00 6d 00 61 00 6e 00 65 00 6e 00 64 00 65 00 6d 00 69 00 6e 00 69 00 73 00 74 00 65 00 72 00 70 00 6f 00 73 00 34 00 } //1 Ugennemskuelighederdomsmagtensmanendeministerpos4
		$a_01_4 = {47 00 55 00 6e 00 6e 00 65 00 72 00 42 00 69 00 6e 00 67 00 } //1 GUnnerBing
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}