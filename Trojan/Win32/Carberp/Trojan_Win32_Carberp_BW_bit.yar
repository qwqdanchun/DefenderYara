
rule Trojan_Win32_Carberp_BW_bit{
	meta:
		description = "Trojan:Win32/Carberp.BW!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 4d 00 70 00 36 00 63 00 33 00 59 00 67 00 75 00 6b 00 78 00 32 00 39 00 47 00 62 00 44 00 6b 00 5f 00 65 00 78 00 69 00 74 00 } //1 Global\Mp6c3Ygukx29GbDk_exit
		$a_01_1 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7b 00 44 00 45 00 35 00 46 00 35 00 36 00 38 00 32 00 2d 00 44 00 30 00 41 00 31 00 2d 00 34 00 42 00 32 00 39 00 2d 00 42 00 35 00 44 00 42 00 2d 00 34 00 37 00 32 00 39 00 38 00 41 00 34 00 34 00 38 00 38 00 30 00 43 00 7d 00 } //2 Global\{DE5F5682-D0A1-4B29-B5DB-47298A44880C}
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 56 00 44 00 49 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 5c 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 5c 00 47 00 55 00 49 00 44 00 } //1 SOFTWARE\VDI\Shared\Product Updater\GUID
		$a_01_3 = {3a 00 33 00 30 00 2c 00 73 00 65 00 72 00 76 00 65 00 72 00 2d 00 25 00 73 00 2e 00 } //2 :30,server-%s.
		$a_03_4 = {77 69 6e 00 2c 73 65 72 76 65 72 00 2c 78 36 34 90 02 04 2c 78 38 36 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_03_4  & 1)*1) >=3
 
}