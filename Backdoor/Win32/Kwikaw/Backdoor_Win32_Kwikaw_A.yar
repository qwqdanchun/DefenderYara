
rule Backdoor_Win32_Kwikaw_A{
	meta:
		description = "Backdoor:Win32/Kwikaw.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {71 00 61 00 77 00 73 00 65 00 64 00 } //01 00  qawsed
		$a_01_1 = {31 00 32 00 30 00 37 00 2d 00 47 00 77 00 46 00 } //01 00  1207-GwF
		$a_01_2 = {2f 00 63 00 20 00 73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 72 00 20 00 2d 00 74 00 } //01 00  /c shutdown -r -t
		$a_03_3 = {85 c0 0f 8e 90 01 02 00 00 33 c0 8a 8c 04 90 01 02 00 00 80 f1 02 88 8c 04 90 01 02 00 00 40 3d 00 08 00 00 7c 90 01 01 8b 8c 24 90 01 02 00 00 8d 41 ff 83 f8 09 77 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}