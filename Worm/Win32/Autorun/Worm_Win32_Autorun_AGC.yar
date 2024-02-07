
rule Worm_Win32_Autorun_AGC{
	meta:
		description = "Worm:Win32/Autorun.AGC,SIGNATURE_TYPE_PEHSTR,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 54 00 65 00 6d 00 70 00 5c 00 73 00 6d 00 73 00 73 00 30 00 2e 00 65 00 78 00 65 00 } //01 00  C:\WINDOWS\Temp\smss0.exe
		$a_01_1 = {6f 00 70 00 65 00 6e 00 3d 00 52 00 45 00 43 00 49 00 43 00 4c 00 45 00 52 00 5c 00 53 00 2d 00 31 00 2d 00 } //01 00  open=RECICLER\S-1-
		$a_01_2 = {5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  \autorun.inf
		$a_01_3 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2d 00 73 00 20 00 2d 00 74 00 } //00 00  shutdown.exe -s -t
	condition:
		any of ($a_*)
 
}