
rule PWS_BAT_Evital_B_bit{
	meta:
		description = "PWS:BAT/Evital.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 0b 00 00 03 00 "
		
	strings :
		$a_01_0 = {68 00 77 00 69 00 64 00 3d 00 7b 00 30 00 7d 00 26 00 6f 00 73 00 3d 00 7b 00 31 00 7d 00 26 00 66 00 69 00 6c 00 65 00 3d 00 7b 00 32 00 7d 00 26 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 3d 00 7b 00 33 00 7d 00 26 00 70 00 73 00 77 00 64 00 3d 00 7b 00 34 00 7d 00 26 00 63 00 72 00 65 00 64 00 69 00 74 00 3d 00 7b 00 35 00 7d 00 26 00 61 00 75 00 74 00 6f 00 66 00 69 00 6c 00 6c 00 3d 00 7b 00 36 00 7d 00 26 00 77 00 61 00 6c 00 6c 00 65 00 74 00 73 00 3d 00 7b 00 37 00 7d 00 26 00 69 00 64 00 3d 00 7b 00 38 00 7d 00 26 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 7b 00 39 00 7d 00 } //03 00  hwid={0}&os={1}&file={2}&cookie={3}&pswd={4}&credit={5}&autofill={6}&wallets={7}&id={8}&version={9}
		$a_01_1 = {77 00 68 00 6f 00 69 00 61 00 6d 00 2e 00 73 00 70 00 61 00 63 00 65 00 2f 00 67 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 } //03 00  whoiam.space/gate.php
		$a_01_2 = {68 00 6f 00 73 00 74 00 6e 00 61 00 6d 00 65 00 7c 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 7c 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //03 00  hostname|encryptedPassword|encryptedUsername
		$a_01_3 = {73 00 63 00 72 00 65 00 65 00 6e 00 2e 00 6a 00 70 00 65 00 67 00 } //02 00  screen.jpeg
		$a_01_4 = {70 00 75 00 72 00 70 00 6c 00 65 00 5c 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 78 00 6d 00 6c 00 } //02 00  purple\accounts.xml
		$a_01_5 = {45 00 78 00 6f 00 64 00 75 00 73 00 5c 00 65 00 78 00 6f 00 64 00 75 00 73 00 2e 00 77 00 61 00 6c 00 6c 00 65 00 74 00 } //02 00  Exodus\exodus.wallet
		$a_01_6 = {72 00 65 00 63 00 65 00 6e 00 74 00 73 00 65 00 72 00 76 00 65 00 72 00 73 00 2e 00 78 00 6d 00 6c 00 } //02 00  recentservers.xml
		$a_01_7 = {73 00 69 00 74 00 65 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 78 00 6d 00 6c 00 } //01 00  sitemanager.xml
		$a_01_8 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 56 00 69 00 64 00 65 00 6f 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 } //01 00  select * from Win32_VideoController
		$a_01_9 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //01 00  select * from Win32_Processor
		$a_01_10 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 44 00 69 00 73 00 6b 00 44 00 72 00 69 00 76 00 65 00 } //00 00  select * from Win32_DiskDrive
	condition:
		any of ($a_*)
 
}