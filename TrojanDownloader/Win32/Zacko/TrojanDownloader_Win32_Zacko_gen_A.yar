
rule TrojanDownloader_Win32_Zacko_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Zacko.gen!A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {87 f3 55 8b ec 83 c4 c0 8d 5d c0 c7 03 68 74 74 70 c7 43 04 3a 2f 2f 78 c7 43 08 25 30 38 6c c7 43 0c 78 2e 63 6f c7 43 10 2e 63 63 00 81 75 0c 68 65 6c 70 8b 4d 0c d3 45 0c ff 75 0c 53 ff 75 08 fb 45 b6 30 83 c4 0c c9 c2 08 00 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}