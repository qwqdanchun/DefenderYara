
rule TrojanDownloader_BAT_Kryptik_RDD_MTB{
	meta:
		description = "TrojanDownloader:BAT/Kryptik.RDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  cmd.exe
		$a_01_1 = {2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 2e 00 31 00 2e 00 31 00 2e 00 31 00 20 00 2d 00 6e 00 20 00 32 00 20 00 2d 00 77 00 20 00 31 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 22 00 } //01 00  /C ping 1.1.1.1 -n 2 -w 1000 > Nul & Del "
		$a_01_2 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //01 00  get_ExecutablePath
		$a_01_3 = {53 00 68 00 61 00 72 00 70 00 43 00 6f 00 6e 00 66 00 69 00 67 00 50 00 61 00 72 00 73 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00  SharpConfigParser.dll
		$a_01_4 = {64 00 6e 00 6c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00  dnlib.dll
		$a_01_5 = {67 00 61 00 2e 00 65 00 78 00 65 00 } //00 00  ga.exe
	condition:
		any of ($a_*)
 
}