
rule Backdoor_Win32_GoldenLight_A{
	meta:
		description = "Backdoor:Win32/GoldenLight.A,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 0a 00 00 04 00 "
		
	strings :
		$a_03_0 = {8b 41 24 33 d2 bd 1c 00 00 00 f7 f5 89 51 90 01 01 8a 44 11 04 8a 14 3e 32 c2 8a 51 90 01 01 32 c2 34 cc 88 04 3e 8b 51 90 01 01 46 42 3b f3 89 51 90 01 01 7c d2 90 00 } //02 00 
		$a_03_1 = {8a 54 34 18 32 d0 88 54 34 18 46 83 fe 2b 7c 90 01 01 8d 44 24 18 6a 46 50 8b cb e8 90 01 04 83 f8 46 0f 85 a5 01 00 00 8d 4c 24 10 6a 05 51 8b cb e8 90 01 03 83 f8 05 0f 85 8e 01 00 00 80 7c 24 10 16 0f 85 83 01 00 00 8b 54 24 13 52 ff 15 90 01 04 66 8b f0 81 e6 ff ff 00 00 81 fe f9 3f 00 00 90 00 } //02 00 
		$a_01_2 = {8a 04 0e 8a d3 32 01 f6 d2 32 c2 88 01 75 02 88 11 43 41 83 fb 1c 7c e8 } //01 00 
		$a_01_3 = {2a 2a 74 78 74 78 2a 2a } //01 00  **txtx**
		$a_01_4 = {5c 61 6c 67 2e 65 78 65 } //01 00  \alg.exe
		$a_80_5 = {54 4d 50 2e 42 41 54 } //TMP.BAT  01 00 
		$a_01_6 = {69 6d 72 70 69 2e 65 78 65 } //01 00  imrpi.exe
		$a_80_7 = {7e 44 43 58 41 4f 38 2e 74 6d 70 } //~DCXAO8.tmp  01 00 
		$a_01_8 = {43 3a 5c 54 45 4d 50 5c 48 69 73 74 6f 72 79 5c 48 69 73 74 6f 72 79 2e 49 45 35 5c 77 73 6e 63 74 66 79 2e 65 78 65 } //01 00  C:\TEMP\History\History.IE5\wsnctfy.exe
		$a_01_9 = {73 4f 66 74 57 61 72 45 5c 4d 49 63 72 4f 73 4f 66 74 5c 57 49 6e 64 4f 77 53 5c 43 75 72 52 65 6e 54 56 65 52 73 69 4f 6e 5c 52 75 4e } //00 00  sOftWarE\MIcrOsOft\WIndOwS\CurRenTVeRsiOn\RuN
		$a_00_10 = {5d 04 00 00 40 27 03 80 } //5c 25 
	condition:
		any of ($a_*)
 
}