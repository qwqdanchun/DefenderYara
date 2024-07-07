
rule Trojan_Win32_DefenderFirewallTamper_B{
	meta:
		description = "Trojan:Win32/DefenderFirewallTamper.B,SIGNATURE_TYPE_CMDHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_00_0 = {46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 } //10 Firewall
		$a_02_1 = {70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 90 02 60 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 90 00 } //1
		$a_02_2 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 60 77 00 69 00 6e 00 64 00 65 00 66 00 65 00 6e 00 64 00 90 00 } //1
		$a_02_3 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 60 73 00 65 00 6e 00 73 00 65 00 90 00 } //1
		$a_02_4 = {61 00 63 00 74 00 69 00 6f 00 6e 00 90 02 10 62 00 6c 00 6f 00 63 00 6b 00 90 00 } //10
		$a_00_5 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 50 00 61 00 74 00 68 00 4e 00 61 00 6d 00 65 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 57 00 68 00 65 00 72 00 65 00 20 00 4e 00 61 00 6d 00 65 00 3d 00 27 00 62 00 74 00 68 00 20 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 27 00 } //-100 SELECT PathName FROM Win32_Service Where Name='bth monitor'
		$a_02_6 = {4d 00 73 00 53 00 65 00 6e 00 73 00 65 00 2e 00 65 00 78 00 65 00 90 02 05 2d 00 44 00 69 00 72 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 4f 00 75 00 74 00 62 00 6f 00 75 00 6e 00 64 00 20 00 2d 00 41 00 63 00 74 00 69 00 6f 00 6e 00 20 00 41 00 6c 00 6c 00 6f 00 77 00 90 00 } //-100
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*10+(#a_00_5  & 1)*-100+(#a_02_6  & 1)*-100) >=21
 
}