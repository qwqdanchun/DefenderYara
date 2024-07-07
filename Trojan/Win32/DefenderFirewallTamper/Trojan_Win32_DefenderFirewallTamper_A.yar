
rule Trojan_Win32_DefenderFirewallTamper_A{
	meta:
		description = "Trojan:Win32/DefenderFirewallTamper.A,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 } //1 Firewall
		$a_02_1 = {2d 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 90 02 10 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 90 02 01 66 00 69 00 6c 00 65 00 73 00 90 02 01 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 90 00 } //1
		$a_02_2 = {2d 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 90 02 60 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 61 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 20 00 74 00 68 00 72 00 65 00 61 00 74 00 20 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 5c 00 70 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 5c 00 90 00 } //1
		$a_02_3 = {2d 00 61 00 63 00 74 00 69 00 6f 00 6e 00 20 00 90 02 10 62 00 6c 00 6f 00 63 00 6b 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}