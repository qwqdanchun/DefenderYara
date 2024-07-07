
rule Trojan_PowerShell_LemonDuck_A{
	meta:
		description = "Trojan:PowerShell/LemonDuck.A,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 06 00 00 "
		
	strings :
		$a_00_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //1 schtasks create
		$a_00_1 = {2f 00 72 00 75 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 } //1 /ru system
		$a_00_2 = {2f 00 73 00 63 00 20 00 4d 00 49 00 4e 00 55 00 54 00 45 00 20 00 2f 00 6d 00 6f 00 } //1 /sc MINUTE /mo
		$a_00_3 = {2f 00 74 00 6e 00 20 00 62 00 6c 00 61 00 63 00 6b 00 62 00 61 00 6c 00 6c 00 20 00 2f 00 46 00 20 00 2f 00 74 00 72 00 20 00 22 00 62 00 6c 00 61 00 63 00 6b 00 62 00 61 00 6c 00 6c 00 22 00 } //4 /tn blackball /F /tr "blackball"
		$a_00_4 = {2f 00 74 00 6e 00 20 00 62 00 6c 00 75 00 65 00 74 00 65 00 61 00 20 00 2f 00 46 00 20 00 2f 00 74 00 72 00 20 00 22 00 62 00 6c 00 75 00 65 00 74 00 65 00 61 00 22 00 } //4 /tn bluetea /F /tr "bluetea"
		$a_02_5 = {2f 00 74 00 6e 00 20 00 52 00 74 00 73 00 61 00 90 02 02 20 00 2f 00 46 00 20 00 2f 00 74 00 72 00 20 00 22 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 90 00 } //4
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*4+(#a_00_4  & 1)*4+(#a_02_5  & 1)*4) >=7
 
}