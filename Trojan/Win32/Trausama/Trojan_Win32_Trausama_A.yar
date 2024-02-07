
rule Trojan_Win32_Trausama_A{
	meta:
		description = "Trojan:Win32/Trausama.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {2b fe 8a 84 17 90 01 04 8d 8a 90 01 04 34 9d 42 3b d3 88 01 7c 90 00 } //01 00 
		$a_00_1 = {39 35 2e 31 36 38 2e 31 37 32 2e 34 36 } //01 00  95.168.172.46
		$a_00_2 = {44 45 46 53 45 52 } //01 00  DEFSER
		$a_00_3 = {4d 4f 52 45 00 00 00 00 77 62 2b 00 72 62 00 00 4e 4f 52 52 } //01 00 
		$a_00_4 = {4b 65 72 6e 65 6c 20 50 61 67 65 20 46 61 75 6c 74 20 78 78 78 78 78 78 68 } //00 00  Kernel Page Fault xxxxxxh
	condition:
		any of ($a_*)
 
}