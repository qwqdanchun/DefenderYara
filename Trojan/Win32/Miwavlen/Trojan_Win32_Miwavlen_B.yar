
rule Trojan_Win32_Miwavlen_B{
	meta:
		description = "Trojan:Win32/Miwavlen.B,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 61 00 64 00 6f 00 73 00 20 00 64 00 65 00 20 00 61 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 76 00 6f 00 73 00 5c 00 53 00 63 00 70 00 61 00 64 00 5c 00 2a 00 2e 00 2a 00 } //01 00  \Dados de aplicativos\Scpad\*.*
		$a_01_1 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 47 00 62 00 70 00 53 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  \GbPlugin\GbpSv.exe
		$a_01_2 = {5c 00 47 00 62 00 70 00 2e 00 6c 00 6f 00 67 00 } //01 00  \Gbp.log
		$a_01_3 = {61 00 2e 00 65 00 78 00 65 00 } //01 00  a.exe
		$a_01_4 = {68 00 32 00 2e 00 64 00 6c 00 6c 00 } //01 00  h2.dll
		$a_01_5 = {66 00 67 00 2e 00 62 00 69 00 6e 00 } //01 00  fg.bin
		$a_01_6 = {72 00 65 00 73 00 75 00 6c 00 74 00 61 00 64 00 6f 00 61 00 } //01 00  resultadoa
		$a_01_7 = {72 00 65 00 73 00 75 00 6c 00 74 00 61 00 64 00 6f 00 65 00 } //01 00  resultadoe
		$a_01_8 = {72 00 65 00 73 00 75 00 6c 00 74 00 61 00 64 00 6f 00 69 00 } //01 00  resultadoi
		$a_01_9 = {43 00 4f 00 4e 00 46 00 4c 00 49 00 43 00 54 00 2e 00 31 00 5c 00 2a 00 2e 00 2a 00 } //01 00  CONFLICT.1\*.*
		$a_01_10 = {5c 00 73 00 63 00 70 00 6c 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00  \scplib.dll
		$a_01_11 = {5c 00 73 00 63 00 70 00 6d 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00  \scpmib.dll
		$a_01_12 = {5c 00 73 00 73 00 68 00 69 00 62 00 2e 00 64 00 6c 00 6c 00 } //01 00  \sshib.dll
		$a_01_13 = {5c 00 4c 00 6f 00 67 00 6f 00 66 00 2e 00 64 00 6c 00 6c 00 } //01 00  \Logof.dll
		$a_01_14 = {5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 64 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 } //01 00  \Downloaded Program Files
		$a_01_15 = {56 00 42 00 20 00 4f 00 70 00 65 00 6e 00 55 00 72 00 6c 00 } //01 00  VB OpenUrl
		$a_01_16 = {5c 00 52 00 75 00 6e 00 00 00 02 00 00 00 5c 00 00 00 08 00 00 00 2e 00 65 00 78 00 65 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}