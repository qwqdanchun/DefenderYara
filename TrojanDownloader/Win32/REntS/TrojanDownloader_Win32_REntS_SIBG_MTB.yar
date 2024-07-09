
rule TrojanDownloader_Win32_REntS_SIBG_MTB{
	meta:
		description = "TrojanDownloader:Win32/REntS.SIBG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {88 f8 24 01 d0 ?? 53 80 e7 ?? 00 f8 5b d0 ?? 53 80 e7 ?? 00 f8 5b c0 ef ?? 80 e7 ?? 00 f8 5b 85 db 74 ?? 90 18 24 ?? c0 e0 ?? 5b 00 d8 88 02 42 a1 ?? ?? ?? ?? 05 ?? ?? ?? ?? 39 c2 75 ?? ff 25 } //1
		$a_03_1 = {6a 40 68 00 10 00 00 68 ?? ?? ?? ?? 6a 00 ff 15 ?? ?? ?? ?? a3 ?? ?? ?? ?? 97 ba ?? ?? ?? ?? d1 c2 ba ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? b8 ?? ?? ?? ?? 37 b8 ?? ?? ?? ?? 40 9f 88 27 47 ba ?? ?? ?? ?? d1 c2 ba ?? ?? ?? ?? d1 e2 ba ?? ?? ?? ?? b9 ?? ?? ?? ?? d3 fa bb ?? ?? ?? ?? b9 ?? ?? ?? ?? d3 cb b8 ?? ?? ?? ?? 81 c0 ?? ?? ?? ?? 9c 5a 88 17 47 b8 ?? ?? ?? ?? c1 f0 a4 bb ?? ?? ?? ?? 43 9c 5a 88 17 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}