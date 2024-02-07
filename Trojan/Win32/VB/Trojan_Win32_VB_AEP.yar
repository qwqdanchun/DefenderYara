
rule Trojan_Win32_VB_AEP{
	meta:
		description = "Trojan:Win32/VB.AEP,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 43 00 54 00 41 00 43 00 4f 00 } //01 00  ECTACO
		$a_01_1 = {4b 00 65 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 6f 00 72 00 54 00 61 00 62 00 6c 00 65 00 } //01 00  KeServiceDescriptorTable
		$a_01_2 = {45 00 78 00 65 00 63 00 51 00 75 00 65 00 72 00 79 00 } //01 00  ExecQuery
		$a_01_3 = {4e 00 6f 00 6e 00 61 00 75 00 74 00 68 00 6f 00 72 00 69 00 74 00 61 00 74 00 69 00 76 00 65 00 20 00 68 00 6f 00 73 00 74 00 20 00 6e 00 6f 00 74 00 20 00 66 00 6f 00 75 00 6e 00 64 00 } //00 00  Nonauthoritative host not found
	condition:
		any of ($a_*)
 
}