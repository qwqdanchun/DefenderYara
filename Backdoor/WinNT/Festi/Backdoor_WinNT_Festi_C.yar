
rule Backdoor_WinNT_Festi_C{
	meta:
		description = "Backdoor:WinNT/Festi.C,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 4f 53 54 20 2f 75 70 64 61 74 65 2e 70 68 70 20 48 54 54 50 2f 31 2e 31 } //01 00  POST /update.php HTTP/1.1
		$a_01_1 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 74 00 64 00 78 00 } //01 00  \Driver\tdx
		$a_01_2 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 6c 00 79 00 4f 00 70 00 65 00 6e 00 50 00 6f 00 72 00 74 00 73 00 5c 00 4c 00 69 00 73 00 74 00 } //01 00  \CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List
		$a_01_3 = {fa f6 45 08 02 74 0d 50 0f 20 c0 25 ff ff fe ff 0f 22 c0 58 b0 01 5d c2 04 00 } //01 00 
		$a_01_4 = {65 63 6c 69 70 73 65 5c 62 6f 74 6e 65 74 5c 64 72 69 76 65 72 73 } //00 00  eclipse\botnet\drivers
	condition:
		any of ($a_*)
 
}