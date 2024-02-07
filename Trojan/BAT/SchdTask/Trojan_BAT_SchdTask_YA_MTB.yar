
rule Trojan_BAT_SchdTask_YA_MTB{
	meta:
		description = "Trojan:BAT/SchdTask.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 6f 00 74 00 20 00 61 00 20 00 76 00 61 00 6c 00 69 00 64 00 20 00 70 00 6f 00 72 00 74 00 20 00 66 00 6f 00 72 00 6d 00 61 00 74 00 21 00 } //01 00  not a valid port format!
		$a_01_1 = {43 00 61 00 6e 00 20 00 6e 00 6f 00 74 00 20 00 72 00 65 00 73 00 6f 00 6c 00 76 00 65 00 20 00 68 00 6f 00 73 00 74 00 20 00 6e 00 61 00 6d 00 65 00 3a 00 7b 00 30 00 7d 00 } //01 00  Can not resolve host name:{0}
		$a_01_2 = {70 00 69 00 6e 00 67 00 20 00 63 00 6f 00 75 00 6e 00 74 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 61 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 20 00 66 00 6f 00 72 00 6d 00 61 00 74 00 21 00 } //01 00  ping count is not a correct format!
		$a_01_3 = {7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 20 00 54 00 54 00 4c 00 3d 00 7b 00 32 00 7d 00 20 00 74 00 69 00 6d 00 65 00 3d 00 7b 00 33 00 7d 00 } //05 00  {0} - {1} TTL={2} time={3}
		$a_01_4 = {54 00 68 00 65 00 20 00 72 00 65 00 73 00 75 00 6c 00 74 00 20 00 69 00 73 00 20 00 74 00 6f 00 6f 00 20 00 6c 00 61 00 72 00 67 00 65 00 2c 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 73 00 74 00 6f 00 72 00 65 00 20 00 74 00 6f 00 20 00 27 00 7b 00 30 00 7d 00 27 00 2e 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 69 00 74 00 20 00 6d 00 61 00 6e 00 75 00 6c 00 6c 00 79 00 } //05 00  The result is too large,program store to '{0}'.Please download it manully
		$a_01_5 = {57 00 72 00 69 00 74 00 65 00 54 00 61 00 73 00 6b 00 52 00 65 00 73 00 } //05 00  WriteTaskRes
		$a_01_6 = {41 00 76 00 61 00 69 00 6c 00 61 00 62 00 6c 00 65 00 43 00 6f 00 75 00 6e 00 74 00 } //00 00  AvailableCount
	condition:
		any of ($a_*)
 
}