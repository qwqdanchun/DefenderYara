
rule Trojan_Win32_Dorunsas_S{
	meta:
		description = "Trojan:Win32/Dorunsas.S,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 72 00 65 00 73 00 69 00 2e 00 78 00 79 00 7a 00 } //01 00  aresi.xyz
		$a_01_1 = {61 00 74 00 61 00 6b 00 61 00 72 00 61 00 2e 00 62 00 69 00 64 00 } //01 00  atakara.bid
		$a_01_2 = {59 00 5a 00 4e 00 41 00 31 00 37 00 35 00 49 00 61 00 70 00 47 00 71 00 42 00 6d 00 42 00 53 00 4a 00 71 00 31 00 37 00 4a 00 47 00 } //01 00  YZNA175IapGqBmBSJq17JG
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		any of ($a_*)
 
}