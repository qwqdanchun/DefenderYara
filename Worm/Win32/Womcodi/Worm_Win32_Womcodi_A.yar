
rule Worm_Win32_Womcodi_A{
	meta:
		description = "Worm:Win32/Womcodi.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {f5 5c 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 23 ?? ?? f5 4c 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 23 ?? ?? f5 69 00 00 00 0b 13 00 04 00 23 ?? ?? 2a 46 ?? ?? f5 6d 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 65 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 57 00 00 00 } //1
		$a_02_1 = {f5 65 00 00 00 04 ?? ?? 0a 09 00 08 00 04 ?? ?? f5 4d 00 00 00 04 ?? ?? 0a 09 00 08 00 04 ?? ?? fb ef ?? ?? f5 75 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ef ?? ?? f5 6c 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ef ?? ?? f5 65 00 00 00 } //1
		$a_02_2 = {f5 68 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? f5 74 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 74 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ?? ?? ?? f5 70 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 3a 00 00 00 04 ?? ?? 0a ?? ?? ?? ?? 04 ?? ?? fb ?? ?? ?? f5 2f 00 00 00 0b ?? ?? ?? ?? 46 ?? ?? fb ?? ?? ?? f5 2f 00 00 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=2
 
}