
rule Worm_Win32_Vobfus_E{
	meta:
		description = "Worm:Win32/Vobfus.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {f5 2e 00 00 00 04 90 01 0e f5 74 00 00 00 04 90 01 0e f5 68 00 00 00 04 90 01 0e f5 65 00 00 00 04 90 01 0e f5 69 00 00 00 04 90 01 0e f5 6d 00 00 00 04 90 01 0e f5 61 00 00 00 04 90 01 0e f5 67 00 00 00 04 90 01 0e f5 65 00 00 00 04 90 01 0e f5 70 00 00 00 04 90 01 0e f5 61 00 00 00 04 90 01 0e f5 72 00 00 00 04 90 01 0e f5 6c 00 00 00 04 90 01 0e f5 6f 00 00 00 04 90 01 0e f5 75 00 00 00 04 90 01 0e f5 72 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}