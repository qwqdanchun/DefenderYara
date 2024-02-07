
rule Trojan_Win32_Pucodex_B{
	meta:
		description = "Trojan:Win32/Pucodex.B,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 6d 61 67 65 2f 70 6a 70 65 67 } //01 00  image/pjpeg
		$a_01_1 = {25 73 3f 61 63 74 3d 25 73 26 75 69 64 3d 25 73 26 69 64 3d 25 73 } //01 00  %s?act=%s&uid=%s&id=%s
		$a_01_2 = {6b 69 6c 6c 44 61 74 65 } //01 00  killDate
		$a_01_3 = {62 6f 74 69 64 } //00 00  botid
	condition:
		any of ($a_*)
 
}