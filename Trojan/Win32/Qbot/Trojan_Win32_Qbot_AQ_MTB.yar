
rule Trojan_Win32_Qbot_AQ_MTB{
	meta:
		description = "Trojan:Win32/Qbot.AQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {00 52 61 70 72 5f 66 69 6c 65 5f 6d 6b 74 65 6d 70 40 31 36 00 } //1
		$a_01_1 = {00 52 61 70 72 5f 66 69 6c 65 5f 6e 61 6d 65 5f 67 65 74 40 38 00 } //1 刀灡彲楦敬湟浡彥敧䁴8
		$a_01_2 = {00 52 61 70 72 5f 66 69 6c 65 5f 6f 70 65 6e 5f 66 6c 61 67 73 5f 73 74 64 69 6e 40 31 32 00 } //1
		$a_01_3 = {00 52 61 70 72 5f 66 69 6c 65 5f 69 6e 68 65 72 69 74 5f 73 65 74 40 34 00 } //1
		$a_01_4 = {00 52 61 70 72 5f 66 69 6c 65 5f 64 75 70 32 40 31 32 00 } //1
		$a_01_5 = {00 54 69 6d 65 00 } //1 吀浩e
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}