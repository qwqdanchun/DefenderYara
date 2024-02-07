
rule Trojan_Win32_Vools_RB_MTB{
	meta:
		description = "Trojan:Win32/Vools.RB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {7b 45 42 30 5a 38 35 2d 33 37 46 38 2d 44 35 32 } //0a 00  {EB0Z85-37F8-D52
		$a_01_1 = {43 3a 5c 57 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 72 64 70 74 61 66 2e 78 73 6c } //0a 00  C:\Windows\system32\rdptaf.xsl
		$a_01_2 = {57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 72 00 64 00 70 00 68 00 6c 00 63 00 2e 00 64 00 61 00 74 00 } //01 00  WINDOWS\system32\rdphlc.dat
		$a_01_3 = {35 37 20 36 39 20 36 65 20 36 34 20 36 66 20 37 37 20 37 33 20 32 30 20 33 35 20 32 65 20 33 31 20 30 30 } //01 00  57 69 6e 64 6f 77 73 20 35 2e 31 00
		$a_01_4 = {25 73 5c 73 76 63 68 6f 73 74 2e 78 6d 6c } //00 00  %s\svchost.xml
	condition:
		any of ($a_*)
 
}