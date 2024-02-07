
rule Worm_Win32_Ottol_A{
	meta:
		description = "Worm:Win32/Ottol.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {f5 6e 00 00 00 0b 02 00 04 00 31 00 ff f5 2e 00 00 00 0b 02 00 04 00 31 fc fe f5 69 00 00 00 0b 02 00 04 00 31 f8 fe f5 6e 00 00 00 0b 02 00 04 00 31 f4 fe f5 66 00 00 00 0b 02 00 04 00 31 f0 fe f5 00 00 00 00 } //01 00 
		$a_01_1 = {23 54 ff f5 62 00 00 00 0b 0a 00 04 00 23 50 ff 2a 23 34 ff f5 61 00 00 00 0b 0a 00 04 00 23 30 ff 2a 23 2c ff f5 74 00 00 00 } //01 00 
		$a_01_2 = {2e 00 57 00 6f 00 72 00 6d 00 } //01 00  .Worm
		$a_01_3 = {68 00 6c 00 6d 00 72 00 75 00 6e 00 } //01 00  hlmrun
		$a_01_4 = {68 00 63 00 75 00 72 00 75 00 6e 00 } //00 00  hcurun
		$a_00_5 = {5d 04 00 } //00 2d 
	condition:
		any of ($a_*)
 
}