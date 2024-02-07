
rule Trojan_Win64_IcedID_DN_MTB{
	meta:
		description = "Trojan:Win64/IcedID.DN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {69 65 55 73 48 34 2e 64 6c 6c } //01 00  ieUsH4.dll
		$a_01_1 = {41 56 74 57 48 58 47 63 } //01 00  AVtWHXGc
		$a_01_2 = {42 62 56 47 47 50 64 4a 4d 4f 47 } //01 00  BbVGGPdJMOG
		$a_01_3 = {43 43 43 4a 71 64 42 4b } //01 00  CCCJqdBK
		$a_01_4 = {44 59 65 58 6c 42 42 66 74 6d 71 } //00 00  DYeXlBBftmq
	condition:
		any of ($a_*)
 
}