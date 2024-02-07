
rule Ransom_Win32_Gandcrab_I_MTB{
	meta:
		description = "Ransom:Win32/Gandcrab.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 52 00 41 00 42 00 2d 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 74 00 78 00 74 00 } //01 00  CRAB-DECRYPT.txt
		$a_01_1 = {4b 00 65 00 79 00 62 00 6f 00 61 00 72 00 64 00 20 00 4c 00 61 00 79 00 6f 00 75 00 74 00 5c 00 50 00 72 00 65 00 6c 00 6f 00 61 00 64 00 } //01 00  Keyboard Layout\Preload
		$a_01_2 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 61 00 6c 00 } //01 00  Control Panel\International
		$a_01_3 = {6d 00 73 00 6d 00 70 00 65 00 6e 00 67 00 2e 00 65 00 78 00 65 00 } //01 00  msmpeng.exe
		$a_01_4 = {47 61 6e 64 43 72 61 62 47 61 6e 64 43 72 61 62 20 65 6e 63 72 79 70 74 65 64 } //01 00  GandCrabGandCrab encrypted
		$a_01_5 = {65 6e 63 72 79 70 74 69 6f 6e 2e 64 6c 6c 00 5f 52 65 66 6c 65 63 74 69 76 65 4c 6f 61 64 65 72 } //00 00  湥牣灹楴湯搮汬开敒汦捥楴敶潌摡牥
	condition:
		any of ($a_*)
 
}