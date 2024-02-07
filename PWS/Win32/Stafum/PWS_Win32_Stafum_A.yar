
rule PWS_Win32_Stafum_A{
	meta:
		description = "PWS:Win32/Stafum.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 63 00 68 00 72 00 6f 00 6d 00 65 00 5f 00 7a 00 61 00 6b 00 68 00 6f 00 2e 00 6a 00 73 00 } //01 00  /chrome_zakho.js
		$a_01_1 = {31 00 30 00 39 00 33 00 32 00 36 00 37 00 34 00 30 00 2f 00 6f 00 70 00 65 00 6e 00 5f 00 73 00 69 00 74 00 65 00 2e 00 74 00 78 00 74 00 } //01 00  109326740/open_site.txt
		$a_03_2 = {65 00 6d 00 61 00 69 00 6c 00 3d 00 90 01 10 26 00 70 00 61 00 73 00 73 00 3d 00 90 01 10 26 00 70 00 72 00 6f 00 3d 00 90 00 } //01 00 
		$a_01_3 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 63 6f 6f 6b 69 65 73 20 57 48 45 52 45 20 68 6f 73 74 5f 6b 65 79 3d 22 77 77 77 2e 66 61 63 65 62 6f 6f 6b 2e 63 6f 6d 22 } //00 00  SELECT * FROM cookies WHERE host_key="www.facebook.com"
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}