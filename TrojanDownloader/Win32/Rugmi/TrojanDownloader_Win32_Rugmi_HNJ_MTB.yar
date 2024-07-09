
rule TrojanDownloader_Win32_Rugmi_HNJ_MTB{
	meta:
		description = "TrojanDownloader:Win32/Rugmi.HNJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {c7 45 f8 00 00 00 00 c7 45 fc 00 00 00 00 eb 09 8b 45 fc 83 c0 01 89 45 fc 8b 4d fc 8b 55 08 0f b7 04 4a 85 c0 74 12 8b 4d fc 8b 55 08 0f b7 04 4a 03 45 f8 89 45 f8 eb d7 } //1
		$a_03_1 = {c7 45 f4 00 00 00 00 eb 0c 8b ?? f8 8b ?? ?? 03 ?? f4 89 ?? f4 8b ?? f8 8b ?? ?? 39 ?? f4 73 19 8b ?? f8 8b ?? ?? 8b ?? f4 8b ?? ?? 03 ?? ?? 8b ?? ?? 03 ?? f4 89 ?? eb d0 } //1
		$a_03_2 = {89 4d f4 ba 08 00 00 00 6b c2 00 8b 4d f4 8b 55 08 03 ?? 01 78 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}