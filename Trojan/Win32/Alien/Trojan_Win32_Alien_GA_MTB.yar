
rule Trojan_Win32_Alien_GA_MTB{
	meta:
		description = "Trojan:Win32/Alien.GA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_80_0 = {41 6c 69 65 6e 52 75 6e 50 45 } //AlienRunPE  1
		$a_80_1 = {57 65 62 43 6c 69 65 6e 74 } //WebClient  1
		$a_80_2 = {52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 } //RtlMoveMemory  1
		$a_02_3 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 01 24 2f 00 90 01 24 2f 00 90 02 19 2e 00 6a 00 70 00 67 00 90 00 } //1
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}