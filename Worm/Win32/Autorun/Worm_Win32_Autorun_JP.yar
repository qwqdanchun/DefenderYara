
rule Worm_Win32_Autorun_JP{
	meta:
		description = "Worm:Win32/Autorun.JP,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 54 00 61 00 72 00 61 00 6e 00 74 00 75 00 6c 00 61 00 2e 00 76 00 62 00 70 00 } //01 00  @*\AC:\server\Tarantula.vbp
		$a_01_1 = {3d 00 64 00 6e 00 61 00 6d 00 6d 00 6f 00 63 00 5c 00 6e 00 65 00 70 00 6f 00 5c 00 6c 00 6c 00 65 00 68 00 73 00 } //01 00  =dnammoc\nepo\llehs
		$a_01_2 = {66 00 6e 00 69 00 2e 00 6e 00 75 00 72 00 6f 00 74 00 75 00 61 00 } //01 00  fni.nurotua
		$a_01_3 = {73 00 6f 00 76 00 69 00 68 00 63 00 72 00 61 00 20 00 72 00 65 00 76 00 20 00 61 00 72 00 61 00 70 00 20 00 61 00 74 00 65 00 70 00 72 00 61 00 63 00 20 00 72 00 69 00 72 00 62 00 41 00 3d 00 6e 00 6f 00 69 00 74 00 63 00 61 00 } //00 00  sovihcra rev arap ateprac rirbA=noitca
	condition:
		any of ($a_*)
 
}