
rule Trojan_Win32_QHosts_Y{
	meta:
		description = "Trojan:Win32/QHosts.Y,SIGNATURE_TYPE_PEHSTR_EXT,36 00 36 00 0a 00 00 32 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //02 00  del %windir%\system32\drivers\etc\hosts
		$a_01_1 = {65 63 68 6f 20 32 30 30 2e 36 33 2e 34 33 2e 32 34 } //01 00  echo 200.63.43.24
		$a_01_2 = {65 63 68 6f 20 36 36 2e 32 33 2e 32 33 39 2e 32 32 38 } //01 00  echo 66.23.239.228
		$a_01_3 = {65 63 68 6f 20 32 30 38 2e 38 34 2e 31 34 38 2e 32 33 39 } //01 00  echo 208.84.148.239
		$a_01_4 = {62 62 76 61 2e 63 6c 20 3e 3e } //01 00  bbva.cl >>
		$a_01_5 = {73 63 6f 74 69 61 62 61 6e 6b 2e 63 6f 6d 20 3e 3e } //01 00  scotiabank.com >>
		$a_01_6 = {76 69 61 62 63 70 2e 63 6f 6d 20 3e 3e } //01 00  viabcp.com >>
		$a_01_7 = {6f 66 66 69 63 65 62 61 6e 6b 69 6e 67 2e 63 6c 20 3e 3e } //01 00  officebanking.cl >>
		$a_01_8 = {62 61 6e 63 6f 66 61 6c 61 62 65 6c 6c 61 2e 63 6c 20 3e 3e } //01 00  bancofalabella.cl >>
		$a_01_9 = {62 61 6e 63 6f 65 73 74 61 64 6f 2e 63 6c 20 3e 3e } //00 00  bancoestado.cl >>
	condition:
		any of ($a_*)
 
}