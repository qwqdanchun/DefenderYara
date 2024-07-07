
rule Trojan_Win32_KillMBR_RDB_MTB{
	meta:
		description = "Trojan:Win32/KillMBR.RDB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 20 00 74 00 68 00 65 00 20 00 64 00 61 00 6e 00 67 00 65 00 72 00 6f 00 75 00 73 00 20 00 6d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 6e 00 61 00 6d 00 65 00 64 00 20 00 6e 00 6f 00 75 00 67 00 61 00 72 00 20 00 74 00 68 00 61 00 74 00 20 00 63 00 61 00 6e 00 20 00 63 00 6f 00 72 00 72 00 75 00 70 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //1 You executed the dangerous malware named nougar that can corrupt your system
		$a_01_1 = {57 00 41 00 52 00 4e 00 49 00 4e 00 47 00 20 00 43 00 4f 00 52 00 52 00 55 00 50 00 54 00 49 00 4f 00 4e 00 20 00 48 00 45 00 4c 00 4c 00 20 00 49 00 4e 00 43 00 4f 00 4d 00 49 00 4e 00 47 00 21 00 21 00 21 00 } //1 WARNING CORRUPTION HELL INCOMING!!!
		$a_01_2 = {49 00 54 00 20 00 48 00 55 00 52 00 54 00 53 00 20 00 52 00 45 00 41 00 4c 00 4c 00 59 00 20 00 59 00 4f 00 55 00 52 00 20 00 52 00 45 00 41 00 4c 00 20 00 50 00 43 00 21 00 21 00 21 00 } //1 IT HURTS REALLY YOUR REAL PC!!!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}