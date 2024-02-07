
rule TrojanSpy_Win32_Banker_AHL{
	meta:
		description = "TrojanSpy:Win32/Banker.AHL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {7d 03 46 eb 05 be 01 00 00 00 8b 45 90 01 01 33 db 8a 5c 30 ff 33 5d 90 01 01 3b fb 7c 0a 90 00 } //02 00 
		$a_01_1 = {2d 2d 3d 3d 53 61 6e 74 61 6e 64 65 72 3d 3d 2d 2d 00 } //01 00  ⴭ㴽慓瑮湡敤㵲ⴽ-
		$a_01_2 = {31 35 42 33 32 32 41 31 32 30 42 37 32 38 42 43 32 46 41 39 31 31 34 33 42 34 32 44 41 42 33 45 39 36 33 34 35 33 38 37 43 35 30 32 } //01 00  15B322A120B728BC2FA91143B42DAB3E96345387C502
		$a_01_3 = {33 43 34 46 41 35 46 34 37 39 38 39 45 36 30 43 37 43 46 42 37 33 38 39 45 43 } //01 00  3C4FA5F47989E60C7CFB7389EC
		$a_01_4 = {42 39 43 41 31 42 42 38 32 44 41 46 46 45 36 35 46 37 35 37 46 38 36 42 45 45 36 32 46 36 35 41 34 42 38 30 44 34 43 35 31 34 34 41 38 42 44 44 37 33 45 42 37 45 44 34 43 35 30 38 34 45 35 46 46 35 35 34 46 32 35 30 38 34 43 31 31 32 34 34 39 45 41 33 32 35 36 32 } //00 00  B9CA1BB82DAFFE65F757F86BEE62F65A4B80D4C5144A8BDD73EB7ED4C5084E5FF554F25084C112449EA32562
	condition:
		any of ($a_*)
 
}