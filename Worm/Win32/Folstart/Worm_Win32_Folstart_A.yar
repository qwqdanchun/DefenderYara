
rule Worm_Win32_Folstart_A{
	meta:
		description = "Worm:Win32/Folstart.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 2d 00 31 00 2d 00 35 00 2d 00 33 00 31 00 2d 00 31 00 32 00 38 00 36 00 39 00 37 00 30 00 32 00 37 00 38 00 39 00 37 00 38 00 2d 00 35 00 37 00 31 00 33 00 36 00 36 00 39 00 34 00 39 00 31 00 2d 00 31 00 36 00 36 00 39 00 37 00 35 00 39 00 38 00 34 00 2d 00 33 00 32 00 30 00 5c 00 52 00 6f 00 74 00 69 00 6e 00 6f 00 6d 00 } //01 00  S-1-5-31-1286970278978-5713669491-166975984-320\Rotinom
		$a_03_1 = {b9 81 00 00 00 33 c0 8d bc 90 01 05 66 90 01 04 f3 ab 66 ab b9 81 00 00 00 33 c0 8d 90 01 03 8b 35 90 01 04 f3 ab 66 ab b9 82 00 00 00 33 c0 8d 90 01 03 53 f3 ab 8d 90 01 03 6a 1c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}