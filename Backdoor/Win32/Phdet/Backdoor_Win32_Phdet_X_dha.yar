
rule Backdoor_Win32_Phdet_X_dha{
	meta:
		description = "Backdoor:Win32/Phdet.X!dha,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 61 6b 65 43 61 63 68 65 00 } //01 00  慍敫慃档e
		$a_01_1 = {75 70 64 63 66 67 00 } //01 00 
		$a_01_2 = {6c 64 70 6c 67 00 } //01 00  摬汰g
		$a_01_3 = {75 6e 6c 70 6c 67 00 } //01 00 
		$a_01_4 = {30 78 25 30 32 68 78 25 30 32 68 78 25 30 32 68 78 25 30 32 68 78 25 30 32 68 78 25 30 32 68 78 00 } //0a 00 
		$a_01_5 = {2a 2a 64 65 6c 2e 44 69 73 61 62 6c 65 46 69 72 73 74 52 75 6e 43 75 73 74 6f 6d 69 7a 65 } //0a 00  **del.DisableFirstRunCustomize
		$a_01_6 = {2f 73 20 2f 63 20 22 66 6f 72 20 2f 4c 20 25 25 69 20 69 6e 20 28 31 2c 31 2c 31 30 30 29 20 64 6f 20 28 64 65 6c 20 2f 46 20 22 25 73 22 20 26 20 70 69 6e 67 20 6c 6f 63 61 6c 68 6f 73 74 20 2d 6e 20 32 20 26 20 69 66 20 6e 6f 74 20 65 78 69 73 74 20 22 25 73 22 20 45 78 69 74 20 31 29 22 } //0a 00  /s /c "for /L %%i in (1,1,100) do (del /F "%s" & ping localhost -n 2 & if not exist "%s" Exit 1)"
		$a_01_7 = {4e 6f 50 72 6f 74 65 63 74 65 64 4d 6f 64 65 42 44 69 73 61 62 6c 65 46 69 72 73 74 52 75 6e 43 } //0a 00  NoProtectedModeBDisableFirstRunC
		$a_01_8 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 53 6f 66 74 77 61 72 65 5c 50 6f 6c 69 63 69 65 65 74 20 53 65 74 74 69 6e 67 73 } //00 00  \Microsoft\WindSoftware\Policieet Settings
		$a_00_9 = {7e 15 00 00 cb 5b ee 8e 51 e0 40 3d eb 4f } //db 7c 
	condition:
		any of ($a_*)
 
}