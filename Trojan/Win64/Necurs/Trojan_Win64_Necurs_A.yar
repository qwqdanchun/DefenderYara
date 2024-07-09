
rule Trojan_Win64_Necurs_A{
	meta:
		description = "Trojan:Win64/Necurs.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {66 f2 af 48 f7 d1 48 8d 44 4a fc eb ?? 48 83 c0 fe 66 83 38 5c 74 0c 48 89 05 ?? ?? ?? ?? 48 3b c2 77 ?? 48 8b 15 ?? ?? ?? ?? 33 c0 49 8b cd 48 8b fa 66 f2 af } //1
		$a_02_1 = {48 83 c9 ff 33 c0 48 8b fd ff ?? 66 f2 af 48 f7 d1 48 8d 6c 4d 00 66 44 39 65 00 75 ?? 48 8b 0d ?? ?? ?? ?? 49 3b cc 74 ?? 33 d2 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}