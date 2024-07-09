
rule Backdoor_WinNT_Festi_B{
	meta:
		description = "Backdoor:WinNT/Festi.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {50 4f 53 54 20 2f 75 70 64 61 74 65 2e 70 68 70 20 48 54 54 50 2f 31 2e 31 } //1 POST /update.php HTTP/1.1
		$a_00_1 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 4e 00 54 00 49 00 43 00 45 00 } //1 \Driver\NTICE
		$a_00_2 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 74 00 64 00 78 00 } //1 \Driver\tdx
		$a_00_3 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 6c 00 79 00 4f 00 70 00 65 00 6e 00 50 00 6f 00 72 00 74 00 73 00 5c 00 4c 00 69 00 73 00 74 00 } //1 \CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List
		$a_02_4 = {55 8b ec 51 51 ff 75 08 8d 45 f8 50 ff 15 ?? ?? ?? ?? 8d 45 f8 50 ff 15 ?? ?? ?? ?? c9 c2 04 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}