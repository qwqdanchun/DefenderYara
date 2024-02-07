
rule TrojanSpy_Win32_Streespyer_A{
	meta:
		description = "TrojanSpy:Win32/Streespyer.A,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {54 00 46 00 4d 00 5f 00 53 00 33 00 43 00 5f 00 4b 00 4c 00 5f 00 4d 00 45 00 4e 00 53 00 } //0a 00  TFM_S3C_KL_MENS
		$a_01_1 = {54 73 33 63 5f 52 65 67 5f 57 69 6e } //01 00  Ts3c_Reg_Win
		$a_01_2 = {54 00 46 00 4d 00 5f 00 53 00 33 00 43 00 5f 00 53 00 4b 00 32 00 31 00 5f 00 4c 00 4f 00 47 00 49 00 4e 00 } //01 00  TFM_S3C_SK21_LOGIN
		$a_01_3 = {54 00 46 00 4d 00 5f 00 53 00 33 00 43 00 5f 00 4b 00 31 00 33 00 5f 00 4c 00 4f 00 47 00 49 00 4e 00 } //01 00  TFM_S3C_K13_LOGIN
		$a_03_4 = {45 78 65 63 75 74 65 5f 78 43 6c 6f 73 65 5f 4f 70 65 6e 90 02 0a 53 65 72 76 69 63 65 50 61 75 73 65 90 02 0a 54 53 70 6f 6f 6c 90 00 } //01 00 
		$a_03_5 = {5b 68 73 52 65 73 6f 6c 76 69 6e 67 5d 90 02 0c 5b 68 73 43 6f 6e 6e 65 63 74 69 6e 67 5d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}