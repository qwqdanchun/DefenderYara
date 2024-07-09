
rule Trojan_Win32_Sustask_B{
	meta:
		description = "Trojan:Win32/Sustask.B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 [0-f0] 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 [0-f0] 2f 00 74 00 72 00 [0-f0] 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 69 00 6e 00 64 00 65 00 78 00 69 00 6e 00 67 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 6a 00 73 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}