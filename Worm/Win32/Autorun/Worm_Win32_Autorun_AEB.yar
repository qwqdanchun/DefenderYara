
rule Worm_Win32_Autorun_AEB{
	meta:
		description = "Worm:Win32/Autorun.AEB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 5c 00 5c 00 2e 00 5c 00 72 00 6f 00 6f 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //01 00  winmgmts:\\.\root\SecurityCenter
		$a_02_1 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 90 02 10 6f 00 70 00 65 00 6e 00 3d 00 90 00 } //01 00 
		$a_02_2 = {7b 00 44 00 65 00 6c 00 65 00 74 00 65 00 7d 00 90 02 10 7b 00 42 00 61 00 63 00 6b 00 7d 00 90 02 10 7b 00 54 00 61 00 62 00 7d 00 90 00 } //01 00 
		$a_00_3 = {5c 00 4c 00 69 00 6d 00 65 00 57 00 69 00 72 00 65 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 5c 00 } //01 00  \LimeWire\Shared\
		$a_00_4 = {6e 00 75 00 52 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 } //00 00  nuR\noisreVtnerruC\swodniW\
	condition:
		any of ($a_*)
 
}