
rule Trojan_Win32_Ronathim_A{
	meta:
		description = "Trojan:Win32/Ronathim.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0a 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {8b 45 0c 8b 55 10 c7 85 50 ff ff ff 02 00 00 00 89 95 68 ff ff ff 66 8b 08 8d 85 60 ff ff ff 66 89 8d 58 ff ff ff 8d 4d 90 50 51 c7 85 60 ff ff ff 03 40 00 00 ff 15 } //04 00 
		$a_01_1 = {b8 04 00 02 80 89 41 08 8b 85 7c ff ff ff 89 41 0c 8b 45 80 8b cc 83 ec 10 89 01 } //04 00 
		$a_01_2 = {0f bf 55 dc 89 55 bc 8d 4d e0 db 45 bc c7 45 c8 00 00 80 3f c7 45 ec 00 00 00 00 d9 5d c4 ff 15 } //01 00 
		$a_01_3 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 44 00 53 00 43 00 30 00 33 00 30 00 30 00 31 00 2e 00 65 00 78 00 65 00 } //01 00  system32\DSC03001.exe
		$a_01_4 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 5c 00 54 00 69 00 6d 00 65 00 2e 00 4e 00 41 00 48 00 52 00 4f 00 } //01 00  system32\\Time.NAHRO
		$a_01_5 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 20 00 28 00 32 00 29 00 5c 00 4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 } //00 00  Desktop\New Folder (2)\New Folder
	condition:
		any of ($a_*)
 
}