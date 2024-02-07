
rule Trojan_Win32_Farfli_BAT_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 35 00 34 00 2e 00 32 00 32 00 31 00 2e 00 32 00 37 00 2e 00 32 00 30 00 30 00 2f 00 77 00 6f 00 72 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  154.221.27.200/word.exe
		$a_01_1 = {31 00 35 00 34 00 2e 00 32 00 32 00 31 00 2e 00 32 00 37 00 2e 00 32 00 30 00 30 00 2f 00 69 00 6d 00 67 00 2e 00 6a 00 70 00 67 00 } //01 00  154.221.27.200/img.jpg
		$a_01_2 = {31 00 35 00 34 00 2e 00 32 00 32 00 31 00 2e 00 32 00 37 00 2e 00 32 00 30 00 30 00 2f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 6c 00 6f 00 67 00 } //01 00  154.221.27.200/service.log
		$a_01_3 = {31 00 35 00 34 00 2e 00 32 00 32 00 31 00 2e 00 32 00 37 00 2e 00 32 00 30 00 30 00 2f 00 33 00 36 00 30 00 2e 00 65 00 78 00 65 00 } //00 00  154.221.27.200/360.exe
	condition:
		any of ($a_*)
 
}