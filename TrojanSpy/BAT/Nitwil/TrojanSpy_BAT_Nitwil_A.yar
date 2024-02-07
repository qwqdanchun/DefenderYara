
rule TrojanSpy_BAT_Nitwil_A{
	meta:
		description = "TrojanSpy:BAT/Nitwil.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 53 00 74 00 61 00 72 00 74 00 65 00 64 00 2e 00 2e 00 2e 00 } //02 00  Knight Logger Started...
		$a_01_1 = {5b 00 4c 00 4f 00 47 00 53 00 5d 00 4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 6f 00 66 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 } //02 00  [LOGS]Knight Logger of {0} - {1}
		$a_01_2 = {4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 73 00 65 00 6e 00 74 00 20 00 6c 00 6f 00 67 00 73 00 20 00 6f 00 66 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 } //02 00  Knight Logger sent logs of {0} - {1}
		$a_01_3 = {5b 00 41 00 43 00 43 00 4f 00 55 00 4e 00 54 00 53 00 5d 00 4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 6f 00 66 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 } //02 00  [ACCOUNTS]Knight Logger of {0} - {1}
		$a_01_4 = {5b 00 46 00 49 00 52 00 53 00 54 00 20 00 52 00 55 00 4e 00 5d 00 4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 66 00 69 00 72 00 73 00 74 00 20 00 72 00 75 00 6e 00 20 00 6f 00 6e 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 } //02 00  [FIRST RUN]Knight Logger first run on {0} - {1}
		$a_01_5 = {5b 00 57 00 41 00 4c 00 4c 00 45 00 54 00 53 00 5d 00 4b 00 6e 00 69 00 67 00 68 00 74 00 20 00 4c 00 6f 00 67 00 67 00 65 00 72 00 20 00 6f 00 66 00 20 00 7b 00 30 00 7d 00 20 00 2d 00 20 00 7b 00 31 00 7d 00 } //01 00  [WALLETS]Knight Logger of {0} - {1}
		$a_01_6 = {6b 00 65 00 79 00 6c 00 6f 00 67 00 5f 00 7b 00 30 00 7d 00 7b 00 31 00 7d 00 } //01 00  keylog_{0}{1}
		$a_01_7 = {53 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 55 00 70 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 20 00 4c 00 6f 00 67 00 73 00 2e 00 2e 00 2e 00 } //01 00  Started Uploading Logs...
		$a_01_8 = {57 00 61 00 6c 00 6c 00 65 00 74 00 73 00 20 00 55 00 70 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 53 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 } //00 00  Wallets Uploaded Successfully
		$a_01_9 = {00 67 } //16 00  最
	condition:
		any of ($a_*)
 
}