
rule TrojanSpy_Win32_Banker_LW{
	meta:
		description = "TrojanSpy:Win32/Banker.LW,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {24 0f 32 d8 80 f3 90 01 01 8d 45 fc e8 90 01 04 8b 55 fc 8a 54 3a ff 80 e2 90 01 01 02 d3 88 54 38 ff 46 83 fe 1b 7e 05 be 01 00 00 00 47 ff 4d f4 75 bd 90 00 } //07 00 
		$a_02_1 = {c1 e0 06 03 d8 89 90 01 02 83 c7 06 83 ff 08 7c 90 01 01 83 ef 08 8b cf 8b 90 01 02 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 90 01 02 5a 8b ca 99 f7 f9 89 90 01 02 81 e3 ff 00 00 80 79 90 01 01 4b 81 cb 00 ff ff ff 43 90 00 } //02 00 
		$a_03_2 = {2a 2e 65 6d 6c 00 90 02 10 65 6d 6c 00 90 02 10 2a 2e 74 62 62 00 90 02 10 74 62 62 00 90 02 10 2a 2e 6d 62 6f 78 90 00 } //01 00 
		$a_01_3 = {2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 20 43 6f 6e 74 61 20 64 65 20 45 6d 61 69 6c 20 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d } //01 00 
		$a_01_4 = {2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 20 53 65 6e 68 61 73 20 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d } //01 00 
		$a_01_5 = {43 3a 5c 64 6f 77 6e 6c 6f 61 64 5c } //00 00 
	condition:
		any of ($a_*)
 
}