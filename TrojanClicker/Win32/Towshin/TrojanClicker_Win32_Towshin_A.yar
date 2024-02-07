
rule TrojanClicker_Win32_Towshin_A{
	meta:
		description = "TrojanClicker:Win32/Towshin.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 00 69 00 6e 00 68 00 6f 00 73 00 74 00 2e 00 76 00 62 00 70 00 00 00 } //01 00 
		$a_01_1 = {2f 00 6c 00 69 00 6a 00 69 00 61 00 6e 00 67 00 2e 00 61 00 73 00 70 00 3f 00 73 00 3d 00 } //01 00  /lijiang.asp?s=
		$a_01_2 = {74 00 66 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 2c 00 76 00 6e 00 65 00 74 00 2e 00 63 00 6e 00 2c 00 63 00 6e 00 62 00 62 00 2e 00 63 00 6f 00 6d 00 2e 00 63 00 6e 00 2c 00 6f 00 70 00 65 00 6e 00 64 00 6e 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00  tfol.com,vnet.cn,cnbb.com.cn,opendns.com
		$a_01_3 = {00 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}