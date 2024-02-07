
rule VirTool_Win64_Serpentine_B_MTB{
	meta:
		description = "VirTool:Win64/Serpentine.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svchost.exe
		$a_01_1 = {72 00 73 00 2e 00 70 00 73 00 31 00 } //01 00  rs.ps1
		$a_01_2 = {2f 00 43 00 20 00 50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 46 00 69 00 6c 00 65 00 } //01 00  /C PowerShell.exe -ExecutionPolicy Bypass -File
		$a_03_3 = {ba 02 00 00 00 48 8d 90 01 05 ff 15 90 01 04 48 8d 90 01 05 48 8d 90 01 05 ff 15 90 01 04 45 33 c0 48 8d 90 01 05 48 8d 90 01 02 ff 15 90 01 04 48 c7 85 e8 04 00 00 00 00 00 00 4c 8d 90 01 05 48 8d 90 01 05 48 c7 c1 01 00 00 80 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}