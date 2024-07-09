
rule Trojan_Win32_FileCoder_YY_MTB{
	meta:
		description = "Trojan:Win32/FileCoder.YY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_00_0 = {8b 54 24 24 8b 44 24 2c 8b 4c 24 30 5f 89 32 5e 89 2c 88 5d 5b 83 c4 18 c3 } //1
		$a_03_1 = {6a 40 68 00 10 00 00 52 53 90 0a 40 00 c6 05 ?? ?? ?? ?? 41 c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 6f c6 05 ?? ?? ?? ?? 63 c6 05 ?? ?? ?? ?? 00 ff 15 ?? ?? ?? ?? 8b 15 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}