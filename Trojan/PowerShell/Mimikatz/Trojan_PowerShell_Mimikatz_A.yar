
rule Trojan_PowerShell_Mimikatz_A{
	meta:
		description = "Trojan:PowerShell/Mimikatz.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 09 00 00 "
		
	strings :
		$a_00_0 = {54 00 61 00 6e 00 69 00 75 00 6d 00 45 00 6e 00 64 00 70 00 6f 00 69 00 6e 00 74 00 49 00 6e 00 64 00 65 00 78 00 2e 00 65 00 78 00 65 00 } //65486 TaniumEndpointIndex.exe
		$a_00_1 = {2f 00 6d 00 61 00 69 00 6c 00 74 00 6f 00 } //65526 /mailto
		$a_00_2 = {2d 00 64 00 65 00 76 00 69 00 63 00 65 00 45 00 76 00 65 00 6e 00 74 00 43 00 6c 00 61 00 73 00 73 00 49 00 64 00 } //65526 -deviceEventClassId
		$a_00_3 = {2d 00 70 00 61 00 72 00 74 00 6e 00 65 00 72 00 4e 00 61 00 6d 00 65 00 } //65526 -partnerName
		$a_00_4 = {2d 00 67 00 72 00 70 00 6e 00 61 00 6d 00 65 00 } //65526 -grpname
		$a_00_5 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 4d 00 69 00 6d 00 69 00 6b 00 61 00 74 00 7a 00 } //1 Invoke-Mimikatz
		$a_00_6 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 6d 00 69 00 6d 00 69 00 6b 00 69 00 74 00 74 00 65 00 6e 00 7a 00 } //1 Invoke-mimikittenz
		$a_00_7 = {2f 00 70 00 75 00 74 00 74 00 65 00 72 00 70 00 61 00 6e 00 64 00 61 00 2f 00 6d 00 69 00 6d 00 69 00 6b 00 69 00 74 00 74 00 65 00 6e 00 7a 00 2f 00 } //1 /putterpanda/mimikittenz/
		$a_02_8 = {77 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 72 00 61 00 77 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 75 00 73 00 65 00 72 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 90 02 30 20 00 2d 00 64 00 75 00 6d 00 70 00 63 00 72 00 65 00 64 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*65486+(#a_00_1  & 1)*65526+(#a_00_2  & 1)*65526+(#a_00_3  & 1)*65526+(#a_00_4  & 1)*65526+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_02_8  & 1)*1) >=1
 
}