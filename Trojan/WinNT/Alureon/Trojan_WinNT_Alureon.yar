
rule Trojan_WinNT_Alureon{
	meta:
		description = "Trojan:WinNT/Alureon,SIGNATURE_TYPE_PEHSTR,15 00 15 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 42 00 65 00 65 00 70 00 } //01 00  \Driver\Beep
		$a_01_1 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  services.exe
		$a_01_2 = {46 00 69 00 72 00 65 00 46 00 6f 00 78 00 2e 00 65 00 78 00 65 00 } //0a 00  FireFox.exe
		$a_01_3 = {53 68 03 00 1f 00 8d 44 24 3c 50 83 ef 24 c7 44 24 38 4c 6f 64 72 c7 44 24 3c 0a 00 00 00 ff 15 } //0a 00 
		$a_01_4 = {0f b6 54 98 08 8b 5c 24 18 32 54 0b 01 46 88 51 01 81 e6 ff 00 00 00 8b 54 b0 08 03 fa 81 e7 ff 00 00 00 8b 5c b8 08 } //00 00 
	condition:
		any of ($a_*)
 
}