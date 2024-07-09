
rule Worm_Win32_Autorun_XFO{
	meta:
		description = "Worm:Win32/Autorun.XFO,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {2e 00 78 00 6c 00 73 00 [0-ff] 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 [0-ff] 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 2e 00 49 00 4e 00 46 00 [0-10] 5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 [0-10] 6f 00 70 00 65 00 6e 00 3d 00 [0-10] 73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 [0-10] 73 00 68 00 65 00 6c 00 6c 00 5c 00 41 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 [0-10] 73 00 68 00 65 00 6c 00 6c 00 3d 00 41 00 75 00 74 00 6f 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}