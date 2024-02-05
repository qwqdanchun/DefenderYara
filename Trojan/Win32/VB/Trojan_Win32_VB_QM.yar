
rule Trojan_Win32_VB_QM{
	meta:
		description = "Trojan:Win32/VB.QM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {49 00 46 00 20 00 45 00 58 00 49 00 53 00 54 00 20 00 22 00 00 00 00 00 14 00 00 00 75 00 73 00 65 00 72 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 00 00 00 00 18 00 00 00 47 00 65 00 74 00 43 00 75 00 72 00 73 00 6f 00 72 00 50 00 6f 00 73 00 00 00 } //01 00 
		$a_03_1 = {8b 45 0c ff 30 e8 90 01 02 ff ff 8b d0 8d 8d 90 01 02 ff ff e8 90 01 02 ff ff 50 e8 90 01 02 ff ff 33 85 90 01 02 ff ff 66 89 85 90 01 02 ff ff 89 bd 90 01 02 ff ff 8d 95 90 01 02 ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}