
rule TrojanDownloader_Win32_Agendog_A{
	meta:
		description = "TrojanDownloader:Win32/Agendog.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 04 00 00 03 00 "
		
	strings :
		$a_01_0 = {5c 6e 65 77 5c 64 6f 67 5c 64 6f 67 5c 70 63 69 68 64 64 5c 6f 62 6a 66 72 65 5f 77 78 70 5f 78 38 36 5c 69 33 38 36 5c 70 63 69 68 64 64 2e 70 64 62 } //01 00  \new\dog\dog\pcihdd\objfre_wxp_x86\i386\pcihdd.pdb
		$a_01_1 = {53 59 53 00 25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 75 73 62 68 64 64 2e 73 79 73 } //01 00  奓S匥獹整剭潯╴獜獹整㍭尲牤癩牥屳獵桢摤献獹
		$a_02_2 = {5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 90 02 05 5c 50 68 79 73 69 63 61 6c 48 61 72 64 44 69 73 6b 30 90 00 } //01 00 
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 62 2e 78 69 61 7a 61 69 7a 68 65 2e 6e 65 74 2f 6e 2e 65 78 65 00 41 41 41 41 } //00 00 
	condition:
		any of ($a_*)
 
}