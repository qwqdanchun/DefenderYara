
rule Trojan_Win32_Vundo_gen_CE{
	meta:
		description = "Trojan:Win32/Vundo.gen!CE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_00_0 = {81 7d 0c dc 07 00 00 } //01 00 
		$a_03_1 = {81 c7 08 a0 00 00 89 3d 90 01 04 be 60 ae 0a 00 90 00 } //01 00 
		$a_01_2 = {08 a0 00 00 c7 45 0c 60 ae 0a 00 } //00 00 
	condition:
		any of ($a_*)
 
}