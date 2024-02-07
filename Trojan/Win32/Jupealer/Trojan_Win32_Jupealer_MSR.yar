
rule Trojan_Win32_Jupealer_MSR{
	meta:
		description = "Trojan:Win32/Jupealer!MSR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 31 00 34 00 36 00 2e 00 31 00 36 00 35 00 2e 00 32 00 32 00 32 00 2f 00 6a 00 2f 00 70 00 6f 00 73 00 74 00 } //02 00  http://45.146.165.222/j/post
		$a_01_1 = {3c 73 74 65 61 6c 5f 70 61 73 73 77 6f 72 64 73 3e } //01 00  <steal_passwords>
		$a_01_2 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 73 00 6f 00 6c 00 61 00 72 00 6d 00 61 00 72 00 6b 00 65 00 72 00 2e 00 64 00 61 00 74 00 } //01 00  \AppData\Roaming\solarmarker.dat
		$a_01_3 = {5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 5c 00 47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //00 00  \AppData\Local\Google\Chrome\User Data
	condition:
		any of ($a_*)
 
}