
rule TrojanDownloader_Win32_Waski_SIBC_MTB{
	meta:
		description = "TrojanDownloader:Win32/Waski.SIBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {5d 8b f5 b9 ?? ?? ?? ?? ad 90 18 60 90 18 8b e8 8b f3 b9 10 00 00 00 e8 ?? ?? ?? ?? b9 1f 00 00 00 e8 ?? ?? ?? ?? 56 b9 07 00 00 00 e8 ?? ?? ?? ?? 8b d0 8b 34 24 b9 09 00 00 00 e8 ?? ?? ?? ?? 8b fe 8b ca e8 ?? ?? ?? ?? 33 c0 50 c1 c8 ?? c1 04 24 ?? 01 04 24 ac 84 c0 75 ?? 58 8b f7 3b c5 74 ?? 4a 75 ?? 8b 34 24 b9 0a 00 00 00 e8 ?? ?? ?? ?? 0f b7 0c 56 5e 51 b9 08 00 00 00 e8 ?? ?? ?? ?? 59 e8 ?? ?? ?? ?? 89 74 24 ?? 61 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}