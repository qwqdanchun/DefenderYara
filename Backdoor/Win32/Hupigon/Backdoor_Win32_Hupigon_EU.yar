
rule Backdoor_Win32_Hupigon_EU{
	meta:
		description = "Backdoor:Win32/Hupigon.EU,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 69 72 33 38 30 34 37 32 38 31 39 33 37 33 39 33 37 00 00 6d 69 72 33 39 34 37 33 34 37 35 37 38 36 39 34 37 30 00 00 6d 69 72 33 35 37 39 38 37 36 37 35 33 36 38 32 34 31 00 } //01 00 
		$a_01_1 = {73 65 53 65 6d 61 70 68 6f 72 65 00 00 00 00 53 44 44 79 6e 44 6c 6c 30 39 00 00 00 00 53 44 44 79 6e 44 6c 6c 31 31 00 00 00 00 53 44 44 79 6e 44 6c 6c 30 35 00 } //01 00 
		$a_01_2 = {ff 15 14 20 40 00 3d 36 20 00 00 72 35 8d 05 14 20 40 00 89 45 fc 68 00 10 40 00 68 88 30 40 00 68 00 30 40 00 ff 75 fc ff 15 24 20 40 00 85 c0 74 40 6a ff ff 35 08 30 40 00 ff 15 04 20 40 00 eb 30 68 78 30 40 00 8d 85 fc fe ff ff 68 68 30 40 00 50 ff 15 30 20 40 00 } //00 00 
	condition:
		any of ($a_*)
 
}