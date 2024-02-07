
rule Trojan_BAT_CryptInject_Z{
	meta:
		description = "Trojan:BAT/CryptInject.Z,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 69 7a 7a 42 79 50 61 73 73 2e 70 64 62 } //01 00  WizzByPass.pdb
		$a_01_1 = {57 69 7a 7a 42 79 50 61 73 73 2e 65 78 65 } //01 00  WizzByPass.exe
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_3 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_4 = {43 69 64 65 72 4d 65 64 64 65 62 2e 54 65 6b 72 69 2e 43 34 } //00 00  CiderMeddeb.Tekri.C4
	condition:
		any of ($a_*)
 
}