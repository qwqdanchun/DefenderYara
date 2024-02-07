
rule TrojanDownloader_Win32_Regonid_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Regonid.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {41 43 43 45 50 54 00 43 4f 4d 4d 49 54 00 46 00 46 41 49 4c 00 50 52 55 4e 45 00 53 4b 49 50 00 54 48 45 4e } //0a 00  䍁䕃呐䌀䵏䥍TF䅆䱉倀啒䕎匀䥋P䡔久
		$a_03_1 = {46 83 f9 2d 8b d1 74 90 01 01 83 f9 2b 75 90 01 01 0f b6 0e 46 33 c0 83 f9 30 7c 90 01 01 83 f9 39 7f 90 01 01 83 e9 30 eb 90 01 01 83 c9 ff 83 f9 ff 74 90 00 } //0a 00 
		$a_01_2 = {c1 e2 04 03 d0 0f b7 41 06 c1 e2 05 03 d0 8b 45 18 8b 48 04 8b 40 08 83 e1 07 c1 e2 04 03 d1 83 e0 03 53 } //01 00 
		$a_01_3 = {00 5c 69 6e 66 5c 25 73 00 } //01 00 
		$a_01_4 = {00 73 72 70 61 63 00 } //01 00 
		$a_01_5 = {00 73 72 70 61 6d 00 } //01 00 
		$a_01_6 = {00 63 6b 63 75 73 00 } //01 00 
		$a_01_7 = {00 63 6b 63 74 6d 00 } //01 00 
		$a_01_8 = {00 75 72 6c 00 } //01 00 
		$a_01_9 = {00 68 64 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}