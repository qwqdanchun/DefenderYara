
rule DDoS_Win32_Nitol_N_bit{
	meta:
		description = "DDoS:Win32/Nitol.N!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {59 6f 77 21 20 42 61 64 20 68 6f 73 74 20 6c 6f 6f 6b 75 70 2e 00 } //01 00  潙ⅷ䈠摡栠獯⁴潬歯灵.
		$a_01_1 = {48 6f 73 74 20 6e 61 6d 65 20 69 73 3a 20 25 73 0a 00 } //01 00 
		$a_01_2 = {41 64 64 72 65 73 73 20 25 64 20 3a 20 25 73 0a 00 } //01 00 
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_03_4 = {0f b6 0c 85 90 01 04 28 4c 05 e8 0f b6 14 85 90 01 04 0f b6 0c 85 90 01 04 28 54 05 e9 28 4c 05 ea 0f b6 14 85 90 01 04 0f b6 0c 85 90 01 04 28 54 05 eb 28 4c 05 ec 83 c0 05 83 f8 14 7c bc 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 38 
	condition:
		any of ($a_*)
 
}