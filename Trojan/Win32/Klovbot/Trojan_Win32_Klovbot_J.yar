
rule Trojan_Win32_Klovbot_J{
	meta:
		description = "Trojan:Win32/Klovbot.J,SIGNATURE_TYPE_PEHSTR,05 00 05 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 76 00 4f 00 6c 00 6b 00 2d 00 42 00 6f 00 74 00 6e 00 65 00 74 00 } //01 00  \vOlk-Botnet
		$a_01_1 = {32 00 46 00 37 00 30 00 37 00 32 00 36 00 39 00 37 00 36 00 33 00 38 00 32 00 46 00 } //01 00  2F70726976382F
		$a_01_2 = {35 00 33 00 36 00 46 00 36 00 36 00 37 00 34 00 37 00 37 00 36 00 31 00 37 00 32 00 36 00 35 00 35 00 43 00 34 00 44 00 36 00 39 00 36 00 33 00 37 00 32 00 36 00 46 00 37 00 33 00 36 00 46 00 36 00 36 00 37 00 34 00 35 00 43 00 35 00 37 00 36 00 39 00 36 00 45 00 36 00 34 00 36 00 46 00 37 00 37 00 37 00 33 00 35 00 43 00 34 00 33 00 37 00 35 00 37 00 32 00 37 00 32 00 36 00 35 00 36 00 45 00 37 00 34 00 35 00 36 00 36 00 35 00 37 00 32 00 37 00 33 00 36 00 39 00 36 00 46 00 36 00 45 00 35 00 43 00 35 00 32 00 37 00 35 00 36 00 45 00 } //01 00  536F6674776172655C4D6963726F736F66745C57696E646F77735C43757272656E7456657273696F6E5C52756E
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5f 00 57 00 69 00 6e 00 49 00 6e 00 65 00 74 00 5f 00 } //01 00  Microsoft_WinInet_
		$a_01_4 = {61 00 62 00 65 00 32 00 38 00 36 00 39 00 66 00 2d 00 39 00 62 00 34 00 37 00 2d 00 34 00 63 00 64 00 39 00 2d 00 61 00 33 00 35 00 38 00 2d 00 63 00 32 00 32 00 39 00 30 00 34 00 64 00 62 00 61 00 37 00 66 00 37 00 } //01 00  abe2869f-9b47-4cd9-a358-c22904dba7f7
		$a_01_5 = {62 00 6f 00 74 00 73 00 2e 00 70 00 68 00 70 00 } //01 00  bots.php
		$a_01_6 = {51 00 66 00 48 00 32 00 30 00 35 00 63 00 33 00 4d 00 73 00 6b 00 32 00 2b 00 6d 00 41 00 56 00 4c 00 6a 00 62 00 36 00 54 00 67 00 62 00 36 00 53 00 34 00 } //01 00  QfH205c3Msk2+mAVLjb6Tgb6S4
		$a_01_7 = {32 00 36 00 35 00 33 00 35 00 34 00 34 00 43 00 36 00 36 00 37 00 34 00 37 00 30 00 37 00 33 00 33 00 44 00 } //01 00  2653544C667470733D
		$a_01_8 = {32 00 36 00 35 00 33 00 35 00 34 00 34 00 43 00 36 00 44 00 36 00 31 00 36 00 39 00 36 00 43 00 37 00 33 00 33 00 44 00 } //01 00  2653544C6D61696C733D
		$a_01_9 = {32 00 36 00 35 00 33 00 35 00 34 00 34 00 43 00 36 00 39 00 36 00 35 00 33 00 37 00 33 00 38 00 33 00 44 00 } //01 00  2653544C696537383D
		$a_01_10 = {35 00 43 00 37 00 33 00 37 00 39 00 37 00 33 00 37 00 34 00 36 00 35 00 36 00 44 00 33 00 33 00 33 00 32 00 35 00 43 00 36 00 34 00 37 00 32 00 36 00 39 00 37 00 36 00 36 00 35 00 37 00 32 00 37 00 33 00 35 00 43 00 36 00 35 00 37 00 34 00 36 00 33 00 35 00 43 00 36 00 38 00 36 00 46 00 37 00 33 00 37 00 34 00 37 00 33 00 } //00 00  5C73797374656D33325C647269766572735C6574635C686F737473
	condition:
		any of ($a_*)
 
}