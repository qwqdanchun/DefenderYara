
rule Trojan_Win32_Trex_A{
	meta:
		description = "Trojan:Win32/Trex.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 64 00 21 00 20 00 41 00 6c 00 6c 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 72 00 65 00 63 00 6f 00 76 00 65 00 72 00 65 00 64 00 21 00 } //01 00  Completed! All Files recovered!
		$a_01_1 = {2e 00 7a 00 69 00 70 00 00 09 2e 00 6d 00 70 00 33 00 00 07 2e 00 37 00 7a 00 00 09 2e 00 72 00 61 00 72 00 00 09 2e 00 77 00 6d 00 61 00 00 09 2e 00 61 00 76 00 69 00 00 09 2e 00 77 00 6d 00 } //01 00  .zipऀ.mp3܀.7zऀ.rarऀ.wmaऀ.aviऀ.wm
		$a_01_2 = {53 00 54 00 41 00 54 00 55 00 53 00 3a 00 20 00 46 00 69 00 6c 00 65 00 73 00 20 00 75 00 6e 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 } //01 00  STATUS: Files unlocked
		$a_01_3 = {53 00 54 00 41 00 54 00 55 00 53 00 3a 00 20 00 55 00 6e 00 6c 00 6f 00 63 00 6b 00 69 00 6e 00 67 00 20 00 66 00 69 00 6c 00 65 00 73 00 2e 00 2e 00 2e 00 } //01 00  STATUS: Unlocking files...
		$a_01_4 = {54 00 48 00 45 00 20 00 44 00 4f 00 4e 00 41 00 4c 00 44 00 20 00 54 00 52 00 55 00 4d 00 50 00 20 00 52 00 41 00 4e 00 53 00 4f 00 4d 00 57 00 41 00 52 00 45 00 } //01 00  THE DONALD TRUMP RANSOMWARE
		$a_01_5 = {2e 00 45 00 4e 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 } //00 00  .ENCRYPTED
		$a_01_6 = {00 5d 04 00 } //00 9c 
	condition:
		any of ($a_*)
 
}