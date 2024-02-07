
rule Worm_Win32_Autorun_AGJ{
	meta:
		description = "Worm:Win32/Autorun.AGJ,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 0a 00 00 00 00 00 6f 00 70 00 65 00 6e 00 3d 00 0a 00 00 00 00 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 90 02 80 5c 00 6d 00 73 00 6d 00 73 00 67 00 73 00 2e 00 70 00 69 00 66 90 00 } //0a 00 
		$a_01_1 = {4e 00 65 00 77 00 20 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 20 00 2e 00 65 00 78 00 65 00 } //01 00  New Document .exe
		$a_01_2 = {5c 00 4f 00 75 00 74 00 64 00 69 00 72 00 2e 00 62 00 61 00 74 00 } //01 00  \Outdir.bat
		$a_01_3 = {66 00 70 00 63 00 6f 00 2e 00 62 00 61 00 74 00 } //00 00  fpco.bat
	condition:
		any of ($a_*)
 
}