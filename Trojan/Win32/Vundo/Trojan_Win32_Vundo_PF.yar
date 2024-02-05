
rule Trojan_Win32_Vundo_PF{
	meta:
		description = "Trojan:Win32/Vundo.PF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 58 4d 4f 53 54 5f 49 4e 53 54 41 4c 4c 5f } //01 00 
		$a_01_1 = {43 36 38 36 39 33 36 37 2d 39 41 36 46 2d 34 41 34 46 2d 42 33 38 43 2d 46 34 34 32 42 31 31 30 42 30 37 44 2d 39 37 35 39 41 33 32 41 2d 41 46 39 34 2d 34 33 35 34 2d 38 43 43 38 2d 34 45 45 36 36 45 30 43 43 37 37 38 2d 38 39 45 35 32 31 37 37 2d 43 31 33 36 2d 34 31 31 32 2d 41 35 44 36 2d 31 36 43 37 45 35 37 44 43 43 45 32 } //01 00 
		$a_01_2 = {83 ef 08 8b cf 8b 5d ec d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 ec 5a 8b ca 99 f7 f9 89 55 ec 81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff ff ff 43 8d 45 e4 8b d3 e8 } //01 00 
		$a_03_3 = {56 6a 00 68 ff 0f 1f 00 e8 90 01 04 6a ff 50 e8 90 01 04 e8 90 01 04 3c 08 73 52 6a 00 8d 55 d0 b8 02 00 00 00 e8 90 01 04 8b 45 d0 e8 90 01 04 50 8d 55 cc 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}