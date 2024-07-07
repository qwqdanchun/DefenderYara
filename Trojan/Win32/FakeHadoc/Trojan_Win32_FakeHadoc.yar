
rule Trojan_Win32_FakeHadoc{
	meta:
		description = "Trojan:Win32/FakeHadoc,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {66 b8 10 00 e8 90 01 04 8b 45 90 01 01 e8 90 01 04 83 f8 90 01 01 7d 0c e8 90 01 04 6a 00 e8 90 01 04 33 c0 90 00 } //2
		$a_03_1 = {33 c0 8a 02 8b f3 40 85 c0 c1 f8 00 48 33 45 90 01 01 40 85 c0 c1 f8 00 48 48 40 90 00 } //2
		$a_00_2 = {38 00 46 00 41 00 45 00 39 00 43 00 41 00 45 00 2d 00 33 00 46 00 33 00 35 00 2d 00 34 00 46 00 30 00 36 00 2d 00 42 00 30 00 33 00 34 00 2d 00 30 00 45 00 31 00 42 00 34 00 44 00 38 00 46 00 36 00 36 00 35 00 31 00 } //1 8FAE9CAE-3F35-4F06-B034-0E1B4D8F6651
		$a_00_3 = {48 44 44 20 44 6f 63 74 6f 72 } //1 HDD Doctor
		$a_00_4 = {5c 69 6e 73 74 61 6c 6c 5f 68 64 64 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}