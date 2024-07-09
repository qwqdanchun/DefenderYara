
rule PWS_Win32_Fareit_AI_MTB{
	meta:
		description = "PWS:Win32/Fareit.AI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 09 00 00 "
		
	strings :
		$a_03_0 = {83 c7 04 81 90 0a ff 00 83 c2 04 90 0a ff 00 31 0b 90 0a ff 00 31 f1 90 0a ff 00 8b 09 } //1
		$a_03_1 = {83 c7 04 66 90 0a ff 00 83 c2 04 90 0a ff 00 31 0b 90 0a ff 00 31 f1 90 0a ff 00 8b 09 } //1
		$a_03_2 = {83 c7 04 85 90 0a ff 00 83 c2 04 90 0a ff 00 31 0b 90 0a ff 00 31 f1 90 0a ff 00 8b 09 } //1
		$a_03_3 = {83 c7 04 eb 90 0a ff 00 83 c2 04 90 0a ff 00 31 0b 90 0a ff 00 31 f1 90 0a ff 00 8b 09 } //1
		$a_03_4 = {83 c7 04 66 90 0a ff 00 83 c2 04 90 0a ff 00 31 0b 90 0a 00 02 31 f1 90 0a ff 00 8b 09 } //1
		$a_03_5 = {83 c7 04 eb 90 0a ff 00 83 c2 04 90 0a ff 00 (09|31) 0c 10 90 0a ff 00 31 f1 90 0a ff 00 59 90 0a ff 00 ff 31 } //1
		$a_03_6 = {83 c7 04 81 90 0a ff 00 83 c2 04 90 0a ff 00 (09|31) 0c 10 90 0a ff 00 31 f1 90 0a ff 00 59 90 0a ff 00 ff 31 } //1
		$a_03_7 = {83 c7 04 66 90 0a ff 00 83 c2 04 90 0a ff 00 (09|31) 0c 10 90 0a ff 00 31 f1 90 0a ff 00 59 90 0a ff 00 ff 31 } //1
		$a_03_8 = {83 c7 04 85 90 0a ff 00 83 c2 04 90 0a ff 00 (09|31) 0c 10 90 0a ff 00 31 f1 90 0a ff 00 59 90 0a ff 00 ff 31 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1) >=1
 
}