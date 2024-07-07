
rule Trojan_BAT_Redline_GH_MTB{
	meta:
		description = "Trojan:BAT/Redline.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 03 11 01 11 03 11 01 8e 69 5d 91 02 11 03 91 61 d2 9c 20 90 01 04 7e 90 00 } //10
		$a_01_1 = {41 00 66 00 6d 00 67 00 75 00 77 00 66 00 7a 00 68 00 69 00 68 00 7a 00 70 00 70 00 77 00 77 00 73 00 } //1 Afmguwfzhihzppwws
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1) >=11
 
}
rule Trojan_BAT_Redline_GH_MTB_2{
	meta:
		description = "Trojan:BAT/Redline.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1a 00 0b 00 00 "
		
	strings :
		$a_00_0 = {40 00 43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 41 00 64 00 64 00 49 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //10 @C:\Windows\Microsoft.NET\Framework\v4.0.30319\AddInProcess32.exe
		$a_80_1 = {45 78 70 65 63 74 31 30 30 43 6f 6e 74 69 6e 75 65 } //Expect100Continue  5
		$a_80_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //FromBase64String  5
		$a_80_3 = {65 5f 6d 61 67 69 63 } //e_magic  1
		$a_80_4 = {65 5f 6c 66 61 6e 65 77 } //e_lfanew  1
		$a_80_5 = {68 50 72 6f 63 65 73 73 } //hProcess  1
		$a_80_6 = {56 69 72 74 75 61 6c 41 64 64 72 65 73 73 } //VirtualAddress  1
		$a_80_7 = {70 72 6f 63 4e 61 6d 65 } //procName  1
		$a_80_8 = {66 69 6c 65 4e 61 6d 65 } //fileName  1
		$a_80_9 = {41 64 64 72 65 73 73 4f 66 45 6e 74 72 79 50 6f 69 6e 74 } //AddressOfEntryPoint  1
		$a_80_10 = {58 35 30 39 43 65 72 74 69 66 69 63 61 74 65 } //X509Certificate  1
	condition:
		((#a_00_0  & 1)*10+(#a_80_1  & 1)*5+(#a_80_2  & 1)*5+(#a_80_3  & 1)*1+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_80_7  & 1)*1+(#a_80_8  & 1)*1+(#a_80_9  & 1)*1+(#a_80_10  & 1)*1) >=26
 
}