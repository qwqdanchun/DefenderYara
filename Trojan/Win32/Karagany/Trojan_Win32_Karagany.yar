
rule Trojan_Win32_Karagany{
	meta:
		description = "Trojan:Win32/Karagany,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 0b 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 00 68 80 00 00 00 6a 02 6a 00 6a 03 68 00 00 00 c0 68 90 01 04 ff d7 8b f0 83 fe ff 90 00 } //02 00 
		$a_03_1 = {68 02 01 00 00 8d 8d 90 01 02 ff ff 51 ff 15 90 00 } //02 00 
		$a_03_2 = {46 83 fe 14 7c 90 01 01 8b 0d 90 01 04 6a ff 51 ff 15 90 01 04 68 ff 07 00 00 90 00 } //01 00 
		$a_01_3 = {2f 6b 6e 6f 63 6b 2e 70 68 70 } //01 00  /knock.php
		$a_01_4 = {67 65 6f 2f 70 72 6f 64 75 63 74 69 64 2e 70 68 70 } //01 00  geo/productid.php
		$a_00_5 = {6d 00 73 00 68 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  mshta.exe
		$a_00_6 = {5c 00 41 00 64 00 6f 00 62 00 65 00 5c 00 41 00 64 00 6f 00 62 00 65 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 2e 00 65 00 78 00 65 00 } //01 00  \Adobe\AdobeUpdate .exe
		$a_00_7 = {64 6f 77 6e 65 78 65 63 00 } //01 00 
		$a_00_8 = {41 64 62 55 70 64 2e 6c 6e 6b 00 } //01 00 
		$a_00_9 = {78 64 69 65 78 00 } //01 00  摸敩x
		$a_01_10 = {70 6c 75 67 69 6e 2f 78 67 61 74 65 2e 70 68 70 } //00 00  plugin/xgate.php
	condition:
		any of ($a_*)
 
}