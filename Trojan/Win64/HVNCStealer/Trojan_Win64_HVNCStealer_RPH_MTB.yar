
rule Trojan_Win64_HVNCStealer_RPH_MTB{
	meta:
		description = "Trojan:Win64/HVNCStealer.RPH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4b 00 41 00 56 00 45 00 4e 00 43 00 4c 00 49 00 45 00 4e 00 54 00 } //01 00  SKAVENCLIENT
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {6d 00 6f 00 64 00 75 00 6c 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  module.exe
		$a_01_3 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 6c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //01 00  ProgramData\log.txt
		$a_01_4 = {5b 00 42 00 41 00 43 00 4b 00 53 00 50 00 41 00 43 00 45 00 5d 00 } //01 00  [BACKSPACE]
		$a_01_5 = {5b 00 43 00 41 00 50 00 53 00 20 00 4c 00 4f 00 43 00 4b 00 5d 00 } //01 00  [CAPS LOCK]
		$a_01_6 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_7 = {70 61 73 73 77 6f 72 64 73 2e 74 78 74 } //01 00  passwords.txt
		$a_01_8 = {73 74 65 61 6c 65 72 20 73 65 6e 64 20 6c 6f 67 } //01 00  stealer send log
		$a_01_9 = {6b 65 79 2e 6c 6f 67 } //00 00  key.log
	condition:
		any of ($a_*)
 
}