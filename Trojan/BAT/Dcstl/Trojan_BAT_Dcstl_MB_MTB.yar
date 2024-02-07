
rule Trojan_BAT_Dcstl_MB_MTB{
	meta:
		description = "Trojan:BAT/Dcstl.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 09 00 00 05 00 "
		
	strings :
		$a_01_0 = {72 01 00 00 70 0a 73 17 00 00 0a 0b 07 6f 18 00 00 0a 72 f6 00 00 70 72 10 01 00 70 6f 19 00 00 0a 00 72 32 01 00 70 02 72 4e 01 00 70 28 1a 00 00 0a 0c 07 06 28 1b 00 00 0a 08 6f 1c 00 00 0a 6f 1d 00 00 0a 26 2a } //02 00 
		$a_81_1 = {74 65 73 74 69 6e 67 5f 77 65 62 2e 65 78 65 } //01 00  testing_web.exe
		$a_01_2 = {31 32 36 35 33 30 39 61 2d 33 38 30 36 2d 34 61 32 39 2d 38 32 63 66 2d 32 39 34 62 33 66 32 37 31 31 65 35 } //01 00  1265309a-3806-4a29-82cf-294b3f2711e5
		$a_01_3 = {55 70 6c 6f 61 64 44 61 74 61 } //01 00  UploadData
		$a_01_4 = {47 65 74 4c 6f 63 61 6c 49 50 41 64 64 72 65 73 73 } //01 00  GetLocalIPAddress
		$a_01_5 = {47 65 74 48 6f 73 74 45 6e 74 72 79 } //01 00  GetHostEntry
		$a_01_6 = {47 65 74 48 6f 73 74 4e 61 6d 65 } //01 00  GetHostName
		$a_01_7 = {49 50 48 6f 73 74 45 6e 74 72 79 } //01 00  IPHostEntry
		$a_01_8 = {53 65 6e 64 4d 73 } //00 00  SendMs
	condition:
		any of ($a_*)
 
}