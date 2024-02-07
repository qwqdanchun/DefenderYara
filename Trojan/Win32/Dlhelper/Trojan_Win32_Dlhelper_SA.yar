
rule Trojan_Win32_Dlhelper_SA{
	meta:
		description = "Trojan:Win32/Dlhelper.SA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 52 00 65 00 73 00 74 00 61 00 72 00 74 00 42 00 79 00 52 00 65 00 73 00 74 00 61 00 72 00 74 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 3a 00 43 00 34 00 45 00 38 00 44 00 30 00 45 00 31 00 2d 00 39 00 38 00 38 00 44 00 2d 00 34 00 32 00 62 00 37 00 2d 00 42 00 45 00 41 00 37 00 2d 00 36 00 42 00 46 00 39 00 35 00 38 00 39 00 42 00 42 00 31 00 31 00 31 00 } //01 00  /RestartByRestartManager:C4E8D0E1-988D-42b7-BEA7-6BF9589BB111
		$a_01_1 = {5c 79 75 6e 78 69 62 65 6e 67 64 69 2e 62 61 74 } //01 00  \yunxibengdi.bat
		$a_01_2 = {6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 3d 22 } //01 00  netsh advfirewall firewall add rule name="
		$a_01_3 = {3a 5c 4e 65 74 41 63 63 65 72 41 57 53 5c 52 65 6c 65 61 73 65 5c 4e 65 74 41 63 63 65 72 41 57 53 2e 70 64 62 } //01 00  :\NetAccerAWS\Release\NetAccerAWS.pdb
		$a_01_4 = {5c 63 6c 69 6e 6b 61 70 70 2e 64 61 74 61 } //00 00  \clinkapp.data
	condition:
		any of ($a_*)
 
}