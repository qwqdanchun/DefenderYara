
rule Trojan_Win32_Rhadamanthys_NAY_MTB{
	meta:
		description = "Trojan:Win32/Rhadamanthys.NAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {75 04 84 c0 74 06 66 89 0c 7b eb b3 33 c0 66 89 04 7b 83 c6 90 01 01 0f b7 0e 51 e8 c8 55 ff ff 90 00 } //01 00 
		$a_01_1 = {64 77 61 72 2e 65 78 65 } //00 00  dwar.exe
	condition:
		any of ($a_*)
 
}