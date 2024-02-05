
rule TrojanDownloader_Win32_Moure_B{
	meta:
		description = "TrojanDownloader:Win32/Moure.B,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 34 30 30 32 31 31 74 2e 64 6c 6c 00 43 72 6f 6e 45 78 69 65 65 65 6e 66 69 65 57 65 33 33 33 66 73 62 64 45 61 73 64 77 66 73 61 74 61 73 66 67 45 78 57 00 53 74 66 52 75 61 41 72 65 73 64 67 66 68 73 77 63 76 57 33 32 31 45 64 73 33 33 33 6e 71 77 65 71 66 63 77 75 72 5f 72 74 00 53 74 72 66 41 6c 6f 73 64 71 77 68 67 66 77 67 68 61 66 67 6e 69 45 33 33 77 71 72 71 73 64 67 6f 66 74 45 78 57 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}