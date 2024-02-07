
rule Backdoor_Win32_Saber_YA_MTB{
	meta:
		description = "Backdoor:Win32/Saber.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 09 00 "
		
	strings :
		$a_02_0 = {5c 52 65 6c 65 61 73 65 5c 53 61 62 65 72 90 02 02 2d 44 65 76 2e 70 64 62 90 00 } //01 00 
		$a_00_1 = {3c 7c 3e 43 68 72 6f 6d 65 70 61 73 73 3c 7c 3e } //01 00  <|>Chromepass<|>
		$a_00_2 = {3c 7c 3e 46 69 72 65 46 6f 78 62 6f 6f 6b 3c 7c 3e } //01 00  <|>FireFoxbook<|>
		$a_00_3 = {3c 7c 3e 49 45 70 61 73 73 3c 7c 3e } //01 00  <|>IEpass<|>
		$a_00_4 = {3c 7c 3e 53 61 66 61 72 69 70 61 73 73 3c 7c 3e } //01 00  <|>Safaripass<|>
		$a_00_5 = {3c 7c 3e 54 68 75 6e 64 65 72 62 69 72 64 70 61 73 73 3c 7c 3e } //00 00  <|>Thunderbirdpass<|>
	condition:
		any of ($a_*)
 
}