
rule Trojan_Win32_Triflearch_A{
	meta:
		description = "Trojan:Win32/Triflearch.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 04 00 "
		
	strings :
		$a_03_0 = {68 00 6f 00 72 00 73 00 65 00 73 00 90 02 18 2e 00 66 00 69 00 6c 00 90 02 18 65 00 2d 00 74 00 6f 00 75 00 72 00 2e 00 72 00 75 00 90 00 } //04 00 
		$a_03_1 = {2f 00 6e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 65 00 90 02 06 2e 00 70 00 68 00 70 00 3f 00 64 00 69 00 64 00 3d 00 90 00 } //01 00 
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 6f 00 72 00 73 00 65 00 73 00 2e 00 67 00 72 00 65 00 65 00 6e 00 2d 00 6c 00 69 00 6e 00 6b 00 65 00 72 00 73 00 2e 00 72 00 75 00 2f 00 67 00 65 00 90 02 18 74 00 5f 00 69 00 6e 00 66 00 6f 00 3f 00 70 00 69 00 64 00 3d 00 37 00 38 00 33 00 34 00 90 00 } //01 00 
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 6f 00 72 00 73 00 65 00 73 00 2e 00 63 00 68 00 72 00 69 00 73 00 74 00 6d 00 61 00 73 00 72 00 75 00 73 00 2e 00 72 00 75 00 2f 00 67 00 65 00 74 00 5f 00 69 00 6e 00 66 00 6f 00 3f 00 70 00 69 00 64 00 3d 00 37 00 38 00 33 00 34 00 } //01 00  http://horses.christmasrus.ru/get_info?pid=7834
		$a_03_4 = {2f 00 76 00 5f 00 69 00 6e 00 73 00 74 00 61 00 90 02 18 6c 00 6c 00 3f 00 73 00 69 00 64 00 3d 00 31 00 33 00 33 00 39 00 38 00 26 00 67 00 75 00 69 00 64 00 3d 00 24 00 5f 00 5f 00 47 00 55 00 49 00 44 00 26 00 73 00 69 00 67 00 3d 00 24 00 5f 00 5f 00 53 00 49 00 47 00 26 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 3d 00 24 00 5f 00 5f 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 26 00 6f 00 76 00 72 00 3d 00 24 00 5f 00 5f 00 90 02 18 4f 00 56 00 52 00 90 00 } //01 00 
		$a_03_5 = {2f 00 76 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 3f 00 73 00 90 02 18 69 00 64 00 3d 00 31 00 33 00 33 00 39 00 38 00 26 00 73 00 69 00 67 00 3d 00 24 00 5f 00 5f 00 53 00 49 00 47 00 26 00 67 00 75 00 69 00 64 00 3d 00 24 00 5f 00 5f 00 47 00 55 00 49 00 44 00 90 02 18 26 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 3d 00 24 00 5f 00 5f 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 26 00 6f 00 76 00 72 00 3d 00 24 00 5f 00 5f 00 4f 00 56 00 52 00 90 00 } //01 00 
		$a_01_6 = {2f 00 76 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 3f 00 73 00 69 00 64 00 3d 00 31 00 33 00 33 00 39 00 38 00 26 00 6f 00 76 00 72 00 3d 00 24 00 5f 00 5f 00 4f 00 56 00 52 00 26 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 3d 00 24 00 5f 00 5f 00 42 00 52 00 4f 00 57 00 53 00 45 00 52 00 26 00 67 00 75 00 69 00 64 00 3d 00 24 00 5f 00 5f 00 47 00 55 00 49 00 44 00 26 00 73 00 69 00 67 00 3d 00 24 00 5f 00 5f 00 53 00 49 00 47 00 } //00 00  /v_install?sid=13398&ovr=$__OVR&browser=$__BROWSER&guid=$__GUID&sig=$__SIG
	condition:
		any of ($a_*)
 
}