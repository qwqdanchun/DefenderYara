
rule Worm_BAT_Toshwire_A{
	meta:
		description = "Worm:BAT/Toshwire.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2d 00 63 00 72 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00  -crack.exe
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 43 00 4d 00 44 00 } //01 00  DisableCMD
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //01 00  DisableRegistryTools
		$a_01_3 = {73 00 69 00 67 00 6e 00 6f 00 6e 00 } //01 00  signon
		$a_01_4 = {5c 00 6c 00 69 00 6d 00 65 00 77 00 69 00 72 00 65 00 5c 00 73 00 68 00 61 00 72 00 65 00 64 00 5c 00 } //01 00  \limewire\shared\
		$a_01_5 = {6e 20 50 45 00 00 6a fe 01 16 fe 01 12 0c 7b 56 00 00 04 20 4d 5a 00 00 fe 01 16 fe 01 60 2c 05 } //00 00 
	condition:
		any of ($a_*)
 
}