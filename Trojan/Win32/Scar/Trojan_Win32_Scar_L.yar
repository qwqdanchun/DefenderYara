
rule Trojan_Win32_Scar_L{
	meta:
		description = "Trojan:Win32/Scar.L,SIGNATURE_TYPE_PEHSTR,18 00 18 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 53 65 72 76 69 63 65 73 5c 53 68 61 72 65 64 41 63 63 65 73 73 5c 50 61 72 61 6d 65 74 65 72 73 5c 46 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 41 75 74 68 6f 72 69 7a 65 64 41 70 70 6c 69 63 61 74 69 6f 6e 73 5c 4c 69 73 74 } //0a 00  \Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List
		$a_01_1 = {26 76 65 72 73 69 6f 6e 3d 00 26 6f 73 3d } //03 00  瘦牥楳湯=漦㵳
		$a_01_2 = {6e 74 44 65 66 65 6e 64 65 72 00 63 66 6d 6d 6f 6e } //03 00 
		$a_01_3 = {00 32 31 33 79 78 65 33 00 } //01 00 
		$a_01_4 = {2f 75 70 6c 6f 61 64 2f 67 61 74 65 2e 70 68 70 } //01 00  /upload/gate.php
		$a_01_5 = {2f 75 70 6c 6f 61 64 2f 69 70 2e 70 68 70 } //01 00  /upload/ip.php
		$a_01_6 = {73 6f 63 6b 73 35 00 64 64 6f 73 00 } //01 00  潳正㕳搀潤s
		$a_01_7 = {5c 6d 73 75 70 64 61 74 65 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}