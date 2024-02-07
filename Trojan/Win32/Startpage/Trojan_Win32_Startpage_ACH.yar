
rule Trojan_Win32_Startpage_ACH{
	meta:
		description = "Trojan:Win32/Startpage.ACH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 66 6a 65 69 6f 66 31 6a 2e 6c 6f 67 } //01 00  c:\fjeiof1j.log
		$a_01_1 = {7b 33 45 34 31 38 39 43 38 2d 46 46 34 30 2d 34 33 41 34 2d 41 46 32 31 2d 44 34 31 41 35 41 34 45 45 39 46 34 7d } //01 00  {3E4189C8-FF40-43A4-AF21-D41A5A4EE9F4}
		$a_01_2 = {35 32 44 33 36 37 42 31 36 45 42 42 35 45 42 41 37 41 38 30 42 36 34 35 43 45 32 43 46 33 33 38 43 38 35 43 41 32 37 45 43 33 35 31 41 46 37 43 } //01 00  52D367B16EBB5EBA7A80B645CE2CF338C85CA27EC351AF7C
		$a_01_3 = {2f 77 7a 31 39 34 39 2e 63 6f 6d 2f 59 6f 75 64 61 6f 2e 64 6c 6c } //01 00  /wz1949.com/Youdao.dll
		$a_03_4 = {2f 77 7a 31 31 32 32 90 01 0b 2e 63 6f 6d 2f 59 6f 75 64 61 6f 2e 64 6c 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}