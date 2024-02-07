
rule Worm_Win32_Autorun_KC{
	meta:
		description = "Worm:Win32/Autorun.KC,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {5c 52 75 6e 90 02 08 48 6f 6f 6b 50 72 6f 63 2e 64 6c 6c 90 02 04 65 78 70 6c 6f 72 65 72 2e 65 78 65 90 00 } //0a 00 
		$a_02_1 = {48 69 64 65 51 51 90 02 04 48 6f 6f 6b 50 72 6f 63 90 00 } //05 00 
		$a_00_2 = {73 68 65 6c 6c 5c 65 78 70 6c 6f 72 65 5c 43 6f 6d 6d 61 6e 64 3d } //01 00  shell\explore\Command=
		$a_00_3 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //00 00  autorun.inf
	condition:
		any of ($a_*)
 
}