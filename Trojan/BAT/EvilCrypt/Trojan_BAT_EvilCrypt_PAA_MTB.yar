
rule Trojan_BAT_EvilCrypt_PAA_MTB{
	meta:
		description = "Trojan:BAT/EvilCrypt.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 77 00 69 00 6e 00 69 00 6e 00 69 00 74 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 } //01 00  taskkill /im wininit.exe /f
		$a_01_1 = {43 00 72 00 79 00 70 00 74 00 6f 00 56 00 69 00 72 00 75 00 73 00 20 00 44 00 65 00 74 00 65 00 63 00 74 00 65 00 64 00 21 00 20 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 2e 00 } //01 00  CryptoVirus Detected!  Ransom.
		$a_01_2 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 20 00 26 00 20 00 77 00 6d 00 69 00 63 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 } //01 00  vssadmin delete shadows /all /quiet & wmic shadowcopy delete
		$a_01_3 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 30 00 20 00 2f 00 66 00 } //00 00  reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f
	condition:
		any of ($a_*)
 
}