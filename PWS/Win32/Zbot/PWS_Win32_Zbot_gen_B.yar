
rule PWS_Win32_Zbot_gen_B{
	meta:
		description = "PWS:Win32/Zbot.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 10 00 00 0a 00 "
		
	strings :
		$a_02_0 = {33 c0 c3 6a 00 ff 15 90 01 04 66 81 38 4d 5a 75 ee 8b 48 3c 03 c8 81 39 50 45 00 00 75 e1 8b 49 28 03 c8 ff e1 55 8b ec ff 75 24 b8 90 01 04 ff 75 20 2b 05 90 01 04 ff 75 1c ff 75 18 ff 75 14 ff 75 10 ff 75 0c ff 75 08 50 e8 90 01 02 00 00 83 c4 24 5d c2 20 00 90 00 } //0a 00 
		$a_02_1 = {8a 07 3c 55 89 75 fc 75 1d 80 7f 01 53 75 17 80 7f 02 45 75 11 80 7f 03 52 75 0b 80 7f 04 20 75 05 6a 05 5e eb 90 01 01 3c 50 0f 85 90 01 02 00 00 80 7f 01 41 0f 85 90 01 02 00 00 80 7f 02 53 0f 85 90 01 02 00 00 80 7f 03 53 0f 85 90 01 02 00 00 80 7f 04 20 90 00 } //0a 00 
		$a_02_2 = {8a 07 3c 43 74 08 3c 50 0f 85 90 01 02 00 00 80 7f 01 57 0f 85 90 01 02 00 00 80 7f 02 44 0f 85 90 01 02 00 00 b3 01 e9 90 01 02 00 00 6a 04 5b 39 5d 10 0f 85 90 01 02 00 00 a1 90 01 04 53 53 57 90 00 } //02 00 
		$a_00_3 = {3d 2d 3d 2d 50 61 4e 64 41 21 24 32 2b 29 28 2a } //02 00  =-=-PaNdA!$2+)(*
		$a_00_4 = {2d 21 2d 40 68 6a 30 31 4e 2e 2f 31 40 7d 3b 7c } //02 00  -!-@hj01N./1@};|
		$a_00_5 = {67 72 61 62 5f 25 53 5f 25 30 32 75 5f 25 30 32 75 5f 25 30 32 75 2e 62 69 6e } //02 00  grab_%S_%02u_%02u_%02u.bin
		$a_00_6 = {2a 3c 69 6e 70 75 74 20 2a 76 61 6c 75 65 3d 22 } //02 00  *<input *value="
		$a_00_7 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6e 00 74 00 6f 00 73 00 2e 00 65 00 78 00 65 00 00 00 } //02 00 
		$a_00_8 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 73 00 6e 00 70 00 6f 00 65 00 6d 00 5c 00 76 00 69 00 64 00 65 00 6f 00 2e 00 64 00 6c 00 6c 00 00 00 } //02 00 
		$a_00_9 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 73 00 6e 00 70 00 6f 00 65 00 6d 00 5c 00 61 00 75 00 64 00 69 00 6f 00 2e 00 64 00 6c 00 6c 00 00 00 } //01 00 
		$a_00_10 = {4d 00 61 00 63 00 72 00 6f 00 6d 00 65 00 64 00 69 00 61 00 5c 00 46 00 6c 00 61 00 73 00 68 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 } //01 00  Macromedia\Flash Player
		$a_00_11 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_00_12 = {2a 6b 65 65 70 2d 61 6c 69 76 65 2a } //01 00  *keep-alive*
		$a_00_13 = {2a 3c 6f 70 74 69 6f 6e 20 20 73 65 6c 65 63 74 65 64 } //01 00  *<option  selected
		$a_00_14 = {50 72 6f 78 79 2d 43 6f 6e 6e 65 63 74 69 6f 6e 3a } //01 00  Proxy-Connection:
		$a_00_15 = {2a 3c 73 65 6c 65 63 74 } //00 00  *<select
	condition:
		any of ($a_*)
 
}