
rule Trojan_Win32_RegpwDiscovery_A{
	meta:
		description = "Trojan:Win32/RegpwDiscovery.A,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_02_0 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 02 40 71 00 75 00 65 00 72 00 79 00 90 02 f0 2d 00 66 00 90 02 10 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 00 } //2
		$a_02_1 = {72 00 65 00 67 00 2e 00 65 00 78 00 65 00 90 02 40 71 00 75 00 65 00 72 00 79 00 90 02 f0 2f 00 66 00 90 02 10 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 00 } //2
		$a_02_2 = {72 00 65 00 67 00 20 00 90 02 40 71 00 75 00 65 00 72 00 79 00 90 02 f0 2d 00 66 00 90 02 10 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 00 } //2
		$a_02_3 = {72 00 65 00 67 00 20 00 90 02 40 71 00 75 00 65 00 72 00 79 00 90 02 f0 2f 00 66 00 90 02 10 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 90 00 } //2
		$a_00_4 = {68 00 6b 00 6c 00 6d 00 } //3 hklm
		$a_00_5 = {68 00 6b 00 65 00 79 00 5f 00 6c 00 6f 00 63 00 61 00 6c 00 5f 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 } //3 hkey_local_machine
		$a_00_6 = {72 00 61 00 70 00 69 00 64 00 37 00 5c 00 69 00 6e 00 73 00 69 00 67 00 68 00 74 00 20 00 61 00 67 00 65 00 6e 00 74 00 } //65533 rapid7\insight agent
		$a_00_7 = {74 00 65 00 6d 00 70 00 5c 00 63 00 74 00 78 00 2d 00 } //65533 temp\ctx-
		$a_00_8 = {64 00 65 00 6c 00 65 00 74 00 65 00 20 00 } //65533 delete 
		$a_00_9 = {70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 65 00 78 00 70 00 69 00 72 00 79 00 77 00 61 00 72 00 6e 00 69 00 6e 00 67 00 } //65533 passwordexpirywarning
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_02_3  & 1)*2+(#a_00_4  & 1)*3+(#a_00_5  & 1)*3+(#a_00_6  & 1)*65533+(#a_00_7  & 1)*65533+(#a_00_8  & 1)*65533+(#a_00_9  & 1)*65533) >=5
 
}