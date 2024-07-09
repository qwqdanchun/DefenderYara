
rule TrojanDownloader_Win32_Prockets_A{
	meta:
		description = "TrojanDownloader:Win32/Prockets.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {83 ec 64 56 57 68 ?? ?? ?? ?? 6a 64 ff 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 3d ?? ?? ?? ?? 7d 1f 33 f6 85 c0 7e 2e 8b 3d ?? ?? ?? ?? 68 ?? ?? ?? ?? ff d7 a1 ?? ?? ?? ?? 46 3b f0 7c ef eb 15 8b 3d ?? ?? ?? ?? be ?? ?? ?? ?? 68 ?? ?? ?? ?? ff d7 4e 75 f6 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? a1 ?? ?? ?? ?? 83 c4 04 83 c0 20 8d 4c 24 08 68 ?? ?? ?? ?? 50 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 51 ff 15 ?? ?? ?? ?? 8d 54 24 1c 6a 0a 52 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 20 5f 5e 83 c4 64 c3 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}