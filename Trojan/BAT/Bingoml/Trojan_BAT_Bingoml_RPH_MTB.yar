
rule Trojan_BAT_Bingoml_RPH_MTB{
	meta:
		description = "Trojan:BAT/Bingoml.RPH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {62 00 72 00 61 00 69 00 6e 00 73 00 74 00 6f 00 72 00 6d 00 76 00 63 00 2e 00 6d 00 65 00 } //1 brainstormvc.me
		$a_03_1 = {2f 00 43 00 73 00 74 00 61 00 72 00 74 00 20 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 90 02 30 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_01_2 = {64 65 76 65 6e 76 } //1 devenv
		$a_01_3 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
		$a_01_4 = {53 6c 65 65 70 } //1 Sleep
		$a_01_5 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}