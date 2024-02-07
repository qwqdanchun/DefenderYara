
rule Trojan_Win32_Lofumin_A{
	meta:
		description = "Trojan:Win32/Lofumin.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 6f 00 64 00 75 00 6c 00 65 00 47 00 53 00 5c 00 4d 00 61 00 69 00 6e 00 65 00 72 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 4e 00 54 00 2e 00 65 00 78 00 65 00 } //01 00  ModuleGS\Mainer\SystemNT.exe
		$a_01_1 = {67 00 6f 00 6c 00 66 00 2d 00 73 00 74 00 72 00 65 00 61 00 6d 00 2e 00 75 00 63 00 6f 00 7a 00 2e 00 6e 00 65 00 74 00 2f 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 2f 00 4d 00 69 00 6e 00 65 00 72 00 47 00 65 00 74 00 2f 00 4d 00 69 00 6e 00 65 00 72 00 47 00 61 00 74 00 65 00 } //01 00  golf-stream.ucoz.net/Module/MinerGet/MinerGate
		$a_01_2 = {55 00 53 00 42 00 5f 00 49 00 4e 00 46 00 45 00 43 00 54 00 } //01 00  USB_INFECT
		$a_01_3 = {53 00 74 00 61 00 72 00 74 00 20 00 6d 00 61 00 69 00 6e 00 69 00 6e 00 67 00 2e 00 } //01 00  Start maining.
		$a_01_4 = {5b 00 7a 00 61 00 70 00 72 00 6f 00 73 00 5f 00 6c 00 6f 00 67 00 73 00 74 00 61 00 72 00 74 00 5f 00 6f 00 74 00 76 00 65 00 74 00 5d 00 } //00 00  [zapros_logstart_otvet]
	condition:
		any of ($a_*)
 
}