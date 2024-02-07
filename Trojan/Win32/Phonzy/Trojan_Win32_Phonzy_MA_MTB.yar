
rule Trojan_Win32_Phonzy_MA_MTB{
	meta:
		description = "Trojan:Win32/Phonzy.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_81_0 = {53 48 61 69 4d 6f 6e 65 79 48 6f 73 74 2e 64 6c 6c } //01 00  SHaiMoneyHost.dll
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //01 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost
		$a_01_2 = {73 00 68 00 61 00 6d 00 68 00 48 00 6f 00 73 00 74 00 } //01 00  shamhHost
		$a_01_3 = {44 00 65 00 6c 00 61 00 79 00 65 00 64 00 41 00 75 00 74 00 6f 00 53 00 74 00 61 00 72 00 74 00 } //01 00  DelayedAutoStart
		$a_01_4 = {66 74 70 40 65 78 61 6d 70 6c 65 2e 63 6f 6d } //01 00  ftp@example.com
		$a_01_5 = {61 6e 6f 6e 79 6d 6f 75 73 } //01 00  anonymous
		$a_01_6 = {53 65 74 2d 43 6f 6f 6b 69 65 3a } //01 00  Set-Cookie:
		$a_01_7 = {62 6c 61 6e 6b } //01 00  blank
		$a_01_8 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_9 = {43 72 79 70 74 45 6e 63 72 79 70 74 } //01 00  CryptEncrypt
		$a_01_10 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //00 00  IsDebuggerPresent
	condition:
		any of ($a_*)
 
}