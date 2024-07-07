
rule Trojan_Win32_Emotet_ST_MSR{
	meta:
		description = "Trojan:Win32/Emotet.ST!MSR,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4f 00 70 00 65 00 6e 00 20 00 74 00 68 00 69 00 73 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 } //1 Open this document
		$a_01_1 = {52 00 65 00 70 00 6c 00 61 00 63 00 65 00 25 00 53 00 65 00 6c 00 65 00 63 00 74 00 20 00 74 00 68 00 65 00 20 00 65 00 6e 00 74 00 69 00 72 00 65 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 } //1 Replace%Select the entire documen
		$a_01_2 = {43 00 72 00 79 00 70 00 74 00 } //1 Crypt
		$a_01_3 = {26 00 4e 00 65 00 69 00 67 00 68 00 62 00 6f 00 72 00 } //1 &Neighbor
		$a_01_4 = {42 00 26 00 65 00 65 00 72 00 } //1 B&eer
		$a_01_5 = {53 00 6e 00 61 00 70 00 2e 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 } //1 Snap.Document
		$a_01_6 = {53 00 4e 00 41 00 50 00 2e 00 45 00 58 00 45 00 } //1 SNAP.EXE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}