
rule Trojan_Win32_Qhost_IW{
	meta:
		description = "Trojan:Win32/Qhost.IW,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1e 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {53 56 57 89 65 e8 c7 45 ec 90 01 02 40 00 c7 45 f0 00 00 00 00 c7 45 f4 00 00 00 00 c7 45 fc 01 00 00 00 c7 45 fc 02 00 00 00 6a ff ff 15 40 10 40 00 c7 45 fc 03 00 00 00 ff 15 3c 10 40 00 89 45 c4 c7 45 bc 08 00 00 00 90 00 } //0a 00 
		$a_00_1 = {00 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 00 00 } //0a 00 
		$a_00_2 = {5c 00 77 00 69 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 00 00 00 00 06 00 00 00 74 00 6d 00 70 00 00 00 16 00 00 00 5c 00 77 00 69 00 6e 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 00 00 } //01 00 
		$a_00_3 = {62 00 61 00 6e 00 61 00 6d 00 65 00 78 00 2e 00 63 00 6f 00 6d 00 } //01 00  banamex.com
		$a_00_4 = {62 00 61 00 6e 00 65 00 73 00 63 00 6f 00 2e 00 63 00 6f 00 6d 00 } //01 00  banesco.com
		$a_00_5 = {62 00 61 00 6e 00 65 00 73 00 63 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00  banesconline.com
		$a_00_6 = {62 00 61 00 6e 00 63 00 6f 00 63 00 6f 00 6e 00 74 00 69 00 6e 00 65 00 6e 00 74 00 61 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  bancocontinental.com
		$a_00_7 = {76 00 69 00 61 00 62 00 63 00 70 00 2e 00 63 00 6f 00 6d 00 } //00 00  viabcp.com
	condition:
		any of ($a_*)
 
}