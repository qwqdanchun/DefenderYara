
rule Worm_Win32_Vobfus_AC{
	meta:
		description = "Worm:Win32/Vobfus.AC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {4a f5 02 00 00 00 b2 aa f5 02 00 00 00 aa 6c ?? ff 0b ?? 00 0c 00 31 ?? ff } //1
		$a_03_1 = {f4 02 eb 6b ?? ff eb fb cf e8 c4 f5 00 00 00 00 ?? 1c } //1
		$a_01_2 = {ee 14 02 00 00 00 00 00 c0 00 00 00 00 00 00 46 } //1
		$a_03_3 = {fe 8e 01 00 00 00 10 00 80 08 28 ?? ?? 00 00 f5 00 00 00 00 6c ?? ?? 52 28 ?? ?? 00 00 f5 01 00 00 00 6c ?? ?? 52 6c ?? ?? fd 69 ?? ?? f5 02 00 00 00 6c ?? ?? 52 28 ?? ?? 00 00 f5 03 00 00 00 6c ?? ?? 52 28 ?? ?? 00 00 f5 04 00 00 00 6c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}