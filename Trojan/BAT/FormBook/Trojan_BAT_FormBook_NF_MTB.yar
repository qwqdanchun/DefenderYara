
rule Trojan_BAT_FormBook_NF_MTB{
	meta:
		description = "Trojan:BAT/FormBook.NF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {14 91 08 11 ?? 08 8e 69 5d 91 61 d2 9c 00 11 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}
rule Trojan_BAT_FormBook_NF_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.NF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {2f 40 08 11 06 58 16 32 39 08 11 06 58 02 } //5 䀯ᄈ堆㈖࠹ؑɘ
		$a_03_1 = {1f 09 2e 32 03 07 59 28 ?? 00 00 0a 17 30 0b 04 08 } //5
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}
rule Trojan_BAT_FormBook_NF_MTB_3{
	meta:
		description = "Trojan:BAT/FormBook.NF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {25 26 11 0e 6a 59 69 28 ?? ?? ?? 06 25 26 13 10 20 ?? ?? ?? 00 38 ?? ?? ?? ff 07 16 6a 28 ?? ?? ?? 06 20 ?? ?? ?? 00 38 ?? ?? ?? ff 1b 45 ?? ?? ?? ?? ?? ?? ?? ff 20 ?? ?? ?? 00 28 ?? ?? ?? 06 39 ?? ?? ?? ff 26 06 28 ?? ?? ?? 06 25 26 69 13 0e 20 ?? ?? ?? 00 17 } //5
		$a_01_1 = {4a 55 59 54 47 46 48 4a 4e 4b } //1 JUYTGFHJNK
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
rule Trojan_BAT_FormBook_NF_MTB_4{
	meta:
		description = "Trojan:BAT/FormBook.NF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {09 17 d6 0d 09 1f 10 31 08 1a 13 06 38 ?? ?? ?? ff 1c 2b f6 07 07 d8 20 ?? ?? ?? 00 d8 17 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 08 74 ?? ?? ?? 1b 07 28 ?? ?? ?? 06 } //5
		$a_01_1 = {41 00 33 00 68 00 4c 00 6f 00 51 00 } //1 A3hLoQ
		$a_01_2 = {57 69 6e 64 6f 77 73 41 70 70 33 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 WindowsApp3.Resources.resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}