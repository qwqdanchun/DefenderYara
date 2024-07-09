
rule TrojanDownloader_Win32_VaporRage_D_dha{
	meta:
		description = "TrojanDownloader:Win32/VaporRage.D!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_03_0 = {31 e0 89 84 ?? ?? ?? 00 00 [0-20] 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ?? 88 ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ?? 88 ?? ?? ?? ?? 00 00 8a ?? ?? ?? ?? 00 c6 ?? ?? ?? 00 88 ?? 22 } //1
		$a_03_1 = {31 e0 89 84 ?? ?? ?? 00 00 [0-20] 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ?? 80 ?? ?? 88 ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 89 ?? c1 e6 01 89 ?? ?? ?? 8b ?? ?? ?? 81 ?? ?? 00 00 00 89 } //1
		$a_03_2 = {31 e0 89 84 ?? ?? ?? 00 00 [0-20] 0f be ?? ?? ?? ?? 00 89 ?? c1 e2 01 89 ?? ?? ?? 8b ?? ?? ?? be ?? 00 00 00 89 ?? c1 e7 01 89 ?? ?? ?? 23 ?? ?? ?? 89 ?? ?? ?? 8b } //1
		$a_03_3 = {31 eb 89 9c ?? ?? ?? 00 00 [0-40] 0f ?? ?? ?? 00 00 8d ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ca 88 ?? ?? ?? ?? 00 00 8a ?? ?? ?? ?? 00 80 ?? ?? 0f ?? ?? 83 f1 ?? 88 ca 88 ?? ?? ?? ?? 00 00 } //1
		$a_03_4 = {31 e1 89 8c ?? ?? ?? 00 00 [0-30] 0f be ?? ?? ?? ?? 00 83 f1 ?? 88 ca 88 ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 83 f1 ?? 88 ca 88 ?? ?? ?? ?? ?? ?? 0f be ?? ?? ?? ?? 00 83 f1 ?? 88 ca 88 ?? ?? ?? ?? 00 00 } //1
		$a_03_5 = {31 e1 89 8c ?? ?? ?? 00 00 [0-30] 0f be ?? ?? ?? ?? 00 89 ?? 81 ?? ?? ?? 00 00 89 ?? ?? ?? 8b ?? ?? ?? 83 ?? ?? 89 ?? ?? ?? 8b ?? ?? ?? c1 ?? ?? 89 ?? ?? ?? 8b ?? ?? ?? c1 } //1
		$a_03_6 = {31 ea 89 94 ?? ?? ?? 00 00 [0-30] 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ?? 88 ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 83 ?? ?? 88 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 83 ?? ?? 88 ca 88 ?? ?? ?? ?? 00 00 0f be ?? ?? ?? ?? 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=3
 
}