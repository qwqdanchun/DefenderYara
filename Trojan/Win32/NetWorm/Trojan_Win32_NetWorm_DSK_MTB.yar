
rule Trojan_Win32_NetWorm_DSK_MTB{
	meta:
		description = "Trojan:Win32/NetWorm.DSK!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 00 6c 00 66 00 69 00 2e 00 65 00 78 00 65 00 } //1 alfi.exe
		$a_01_1 = {6b 00 61 00 6e 00 67 00 65 00 6e 00 2e 00 65 00 78 00 65 00 } //1 kangen.exe
		$a_01_2 = {41 00 4d 00 49 00 45 00 4e 00 2e 00 2e 00 2e 00 41 00 4d 00 49 00 45 00 4e 00 2e 00 2e 00 2e 00 41 00 4d 00 49 00 45 00 4e 00 } //1 AMIEN...AMIEN...AMIEN
		$a_01_3 = {52 00 65 00 73 00 74 00 20 00 49 00 6e 00 20 00 50 00 65 00 61 00 63 00 65 00 2e 00 2e 00 2e 00 20 00 50 00 65 00 73 00 69 00 6e 00 } //1 Rest In Peace... Pesin
		$a_01_4 = {52 00 65 00 73 00 74 00 20 00 49 00 6e 00 20 00 50 00 65 00 61 00 63 00 65 00 2e 00 2e 00 2e 00 20 00 4b 00 61 00 6e 00 67 00 65 00 6e 00 } //1 Rest In Peace... Kangen
		$a_01_5 = {54 00 68 00 69 00 73 00 20 00 70 00 6c 00 61 00 63 00 65 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 65 00 6e 00 6f 00 75 00 67 00 68 00 20 00 66 00 6f 00 72 00 20 00 75 00 73 00 20 00 21 00 } //1 This place is not enough for us !
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}