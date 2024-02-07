
rule Trojan_BAT_KillMBR_AW_MTB{
	meta:
		description = "Trojan:BAT/KillMBR.AW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {57 00 68 00 65 00 72 00 65 00 20 00 61 00 6d 00 20 00 49 00 } //03 00  Where am I
		$a_00_1 = {73 00 79 00 73 00 74 00 65 00 6d 00 20 00 69 00 73 00 20 00 63 00 6f 00 72 00 72 00 75 00 70 00 74 00 65 00 64 00 } //03 00  system is corrupted
		$a_00_2 = {74 00 68 00 31 00 73 00 20 00 69 00 73 00 20 00 63 00 72 00 34 00 7a 00 79 00 } //03 00  th1s is cr4zy
		$a_00_3 = {6d 00 62 00 72 00 20 00 64 00 65 00 73 00 74 00 72 00 6f 00 79 00 65 00 64 00 } //03 00  mbr destroyed
		$a_00_4 = {2f 00 6b 00 20 00 72 00 65 00 67 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 48 00 4b 00 43 00 52 00 20 00 2f 00 66 00 } //03 00  /k reg delete HKCR /f
		$a_01_5 = {47 44 49 5f 70 61 79 6c 6f 61 64 73 } //00 00  GDI_payloads
	condition:
		any of ($a_*)
 
}