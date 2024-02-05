
rule Trojan_Win32_Kangkio_C{
	meta:
		description = "Trojan:Win32/Kangkio.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {bf c9 c4 dc ca c7 d2 f2 ce aa c4 fa b2 bb d3 b5 d3 d0 41 64 6d 69 6e } //01 00 
		$a_01_1 = {4e 4f 44 00 72 61 76 00 6e 6f 64 00 41 6e 74 69 00 } //01 00 
		$a_01_2 = {77 2e 6b 61 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}