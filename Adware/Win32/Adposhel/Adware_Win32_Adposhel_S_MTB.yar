
rule Adware_Win32_Adposhel_S_MTB{
	meta:
		description = "Adware:Win32/Adposhel.S!MTB,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 65 00 74 00 6d 00 65 00 64 00 69 00 61 00 5c 00 4e 00 61 00 74 00 69 00 76 00 65 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 4d 00 65 00 64 00 69 00 61 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 } //01 00  Jetmedia\NativeDesktopMediaService
		$a_01_1 = {7b 00 37 00 31 00 31 00 45 00 30 00 37 00 35 00 39 00 2d 00 33 00 32 00 34 00 35 00 2d 00 34 00 39 00 43 00 36 00 2d 00 41 00 34 00 44 00 30 00 2d 00 42 00 35 00 45 00 45 00 39 00 39 00 42 00 32 00 45 00 43 00 41 00 32 00 7d 00 } //01 00  {711E0759-3245-49C6-A4D0-B5EE99B2ECA2}
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 43 61 70 68 79 6f 6e 5c 41 64 76 61 6e 63 65 64 20 49 6e 73 74 61 6c 6c 65 72 5c } //00 00  Software\Caphyon\Advanced Installer\
	condition:
		any of ($a_*)
 
}