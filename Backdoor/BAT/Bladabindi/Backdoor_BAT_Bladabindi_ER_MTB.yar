
rule Backdoor_BAT_Bladabindi_ER_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.ER!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  MD5CryptoServiceProvider
		$a_01_1 = {53 79 73 74 65 6d 2e 4e 65 74 2e 53 6f 63 6b 65 74 73 } //01 00  System.Net.Sockets
		$a_01_2 = {68 6f 6f 6b 49 44 } //01 00  hookID
		$a_01_3 = {4b 45 59 45 56 45 4e 54 46 5f 45 58 54 45 4e 44 45 44 4b 45 59 } //01 00  KEYEVENTF_EXTENDEDKEY
		$a_01_4 = {41 45 53 5f 44 65 63 72 79 70 74 } //01 00  AES_Decrypt
		$a_01_5 = {53 00 6c 00 6f 00 77 00 6c 00 6f 00 72 00 69 00 73 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 69 00 73 00 20 00 41 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 6f 00 6e 00 } //01 00  Slowloris Attack is Already Running on
		$a_01_6 = {41 00 52 00 4d 00 45 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 69 00 73 00 20 00 41 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 6f 00 6e 00 } //01 00  ARME Attack is Already Running on
		$a_01_7 = {41 00 6e 00 74 00 69 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 3a 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 48 00 61 00 63 00 6b 00 65 00 72 00 20 00 77 00 61 00 73 00 20 00 64 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 21 00 } //00 00  AntiProcess: Process Hacker was detected!
	condition:
		any of ($a_*)
 
}