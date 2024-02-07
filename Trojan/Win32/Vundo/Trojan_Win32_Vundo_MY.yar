
rule Trojan_Win32_Vundo_MY{
	meta:
		description = "Trojan:Win32/Vundo.MY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {76 4b 81 79 90 01 01 a2 02 00 00 74 1b 03 09 47 3b fb 72 f0 90 00 } //01 00 
		$a_01_1 = {25 73 25 63 69 70 3d 25 69 2e 25 69 2e 25 69 2e 25 69 26 69 61 3d 25 69 26 } //01 00  %s%cip=%i.%i.%i.%i&ia=%i&
		$a_00_2 = {3c 66 69 78 5f 66 69 72 65 77 61 6c 6c 5f 72 75 6c 65 73 3e } //01 00  <fix_firewall_rules>
		$a_01_3 = {25 73 62 69 6e 5c 6a 61 76 61 77 2e 65 78 65 20 2d } //01 00  %sbin\javaw.exe -
		$a_02_4 = {3c 67 65 74 5f 73 79 73 74 65 6d 5f 69 6e 66 6f 3e 90 02 10 4f 53 20 76 65 72 73 69 6f 6e 20 25 64 2e 25 64 90 00 } //01 00 
		$a_01_5 = {2f 74 72 61 63 6b 2e 70 68 70 3f 61 3d } //01 00  /track.php?a=
		$a_01_6 = {47 6c 6f 62 61 6c 5c 78 77 72 61 70 70 65 72 5f } //00 00  Global\xwrapper_
	condition:
		any of ($a_*)
 
}