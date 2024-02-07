
rule Spammer_Win32_Mailbot_Q{
	meta:
		description = "Spammer:Win32/Mailbot.Q,SIGNATURE_TYPE_PEHSTR,0a 00 09 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d b7 00 00 00 75 1b 83 ec 0c } //01 00 
		$a_01_1 = {25 73 3a 2a 3a 45 6e 61 62 6c 65 64 3a 53 65 72 76 65 72 } //01 00  %s:*:Enabled:Server
		$a_01_2 = {50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //01 00  Profile\AuthorizedApplications\List
		$a_01_3 = {4d 41 49 4c 20 46 52 4f 4d 3a 25 73 } //01 00  MAIL FROM:%s
		$a_01_4 = {52 43 50 54 20 54 4f 3a 25 73 } //01 00  RCPT TO:%s
		$a_01_5 = {54 6f 3a 20 25 54 4f 5f 45 4d 41 49 4c } //01 00  To: %TO_EMAIL
		$a_01_6 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 25 43 4f 4e 54 45 4e 54 5f 54 59 50 45 3b 20 63 68 61 72 73 65 74 3d 75 73 2d 61 73 63 69 69 } //01 00  Content-Type: %CONTENT_TYPE; charset=us-ascii
		$a_01_7 = {25 73 2c 20 25 64 20 25 73 20 25 64 20 25 2e 32 64 3a 25 2e 32 64 3a 25 2e 32 64 20 25 2e 34 64 } //01 00  %s, %d %s %d %.2d:%.2d:%.2d %.4d
		$a_01_8 = {3c 25 73 40 25 73 3e } //01 00  <%s@%s>
		$a_01_9 = {2d 2d 2d 2d 3d 5f 4e 65 78 74 50 61 72 74 5f 25 2e 33 58 5f 30 25 2e 33 58 5f 25 2e 38 58 2e 25 2e 38 58 } //01 00  ----=_NextPart_%.3X_0%.3X_%.8X.%.8X
		$a_01_10 = {62 61 64 63 61 62 31 65 } //01 00  badcab1e
		$a_01_11 = {72 65 61 6c 68 65 6c 6f } //00 00  realhelo
	condition:
		any of ($a_*)
 
}