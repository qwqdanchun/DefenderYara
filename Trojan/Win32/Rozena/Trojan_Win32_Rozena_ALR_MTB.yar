
rule Trojan_Win32_Rozena_ALR_MTB{
	meta:
		description = "Trojan:Win32/Rozena.ALR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {ba d3 4d 62 10 89 c8 f7 ea 89 d0 c1 f8 90 01 01 89 ca c1 fa 90 01 01 29 d0 69 d0 90 02 05 89 c8 29 d0 90 00 } //01 00 
		$a_80_1 = {6e 6f 74 65 70 61 64 2e 65 78 65 } //notepad.exe  00 00 
	condition:
		any of ($a_*)
 
}