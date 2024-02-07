
rule TrojanDownloader_Win32_Nitedrem_D{
	meta:
		description = "TrojanDownloader:Win32/Nitedrem.D,SIGNATURE_TYPE_PEHSTR,06 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 75 00 63 00 6b 00 73 00 2e 00 6f 00 6e 00 65 00 70 00 69 00 65 00 63 00 65 00 64 00 72 00 65 00 61 00 6d 00 2e 00 63 00 6f 00 6d 00 } //01 00  bucks.onepiecedream.com
		$a_01_1 = {2f 00 64 00 6f 00 77 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 75 00 3d 00 } //01 00  /down.asp?action=install&u=
		$a_01_2 = {2f 00 64 00 6f 00 77 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 61 00 63 00 74 00 69 00 6f 00 6e 00 3d 00 64 00 6f 00 77 00 6e 00 26 00 75 00 3d 00 } //01 00  /down.asp?action=down&u=
		$a_01_3 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 3a 00 20 00 66 00 75 00 63 00 6b 00 69 00 6e 00 67 00 } //01 00  User-Agent: fucking
		$a_01_4 = {69 00 61 00 6d 00 72 00 75 00 6e 00 69 00 6e 00 67 00 73 00 74 00 61 00 72 00 74 00 67 00 61 00 67 00 61 00 } //01 00  iamruningstartgaga
		$a_01_5 = {69 00 6d 00 69 00 6e 00 66 00 6f 00 72 00 6e 00 65 00 78 00 79 00 69 00 6e 00 67 00 67 00 61 00 67 00 61 00 68 00 68 00 6a 00 6b 00 61 00 73 00 68 00 64 00 } //00 00  iminfornexyinggagahhjkashd
	condition:
		any of ($a_*)
 
}