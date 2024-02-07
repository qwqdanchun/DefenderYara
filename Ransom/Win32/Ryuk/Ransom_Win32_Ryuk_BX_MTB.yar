
rule Ransom_Win32_Ryuk_BX_MTB{
	meta:
		description = "Ransom:Win32/Ryuk.BX!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 79 00 75 00 6b 00 52 00 65 00 61 00 64 00 4d 00 65 00 2e 00 74 00 78 00 74 00 } //01 00  RyukReadMe.txt
		$a_01_1 = {70 6f 6f 6c 2e 6d 69 6e 65 78 6d 72 2e 63 6f 6d } //01 00  pool.minexmr.com
		$a_01_2 = {48 00 49 00 54 00 20 00 42 00 59 00 20 00 52 00 41 00 4e 00 53 00 4f 00 4d 00 57 00 41 00 52 00 45 00 2e 00 74 00 78 00 74 00 } //01 00  HIT BY RANSOMWARE.txt
		$a_01_3 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4b 00 65 00 79 00 4c 00 6f 00 67 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  \system32\KeyLogs.txt
		$a_01_4 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 20 00 65 00 78 00 70 00 6c 00 6f 00 } //01 00  taskkill /f /im explo
		$a_01_5 = {4b 49 53 53 45 53 5f 54 4f 5f 4d 43 41 46 45 45 } //00 00  KISSES_TO_MCAFEE
	condition:
		any of ($a_*)
 
}