
rule Trojan_Win32_Kaicorn_A_bit{
	meta:
		description = "Trojan:Win32/Kaicorn.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {c7 45 b8 04 00 02 80 c7 45 b0 0a 00 00 00 8d 45 b0 50 e8 } //1
		$a_01_1 = {00 4b 61 77 61 69 69 2d 55 6e 69 63 6f 72 6e 00 4b 61 77 61 69 69 2d 55 6e 69 63 6f 72 6e 00 00 56 62 31 00 } //1
		$a_03_2 = {5c 00 55 00 6e 00 69 00 63 00 6f 00 72 00 6e 00 2d 00 90 02 30 63 00 6d 00 64 00 20 00 2f 00 63 00 20 00 72 00 90 01 02 6e 00 61 00 6d 00 65 00 20 00 22 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}