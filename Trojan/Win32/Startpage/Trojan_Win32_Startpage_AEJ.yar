
rule Trojan_Win32_Startpage_AEJ{
	meta:
		description = "Trojan:Win32/Startpage.AEJ,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {2e 00 6b 00 39 00 36 00 39 00 2e 00 63 00 6f 00 6d 00 } //01 00  .k969.com
		$a_01_1 = {2d 00 62 00 61 00 34 00 66 00 2d 00 30 00 30 00 61 00 30 00 63 00 39 00 31 00 65 00 65 00 64 00 62 00 61 00 7d 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 53 00 74 00 61 00 72 00 74 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 5c 00 } //01 00  -ba4f-00a0c91eedba}\Shell\Start\Command\
		$a_01_2 = {5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 22 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00  \iexplore.exe" http://
		$a_01_3 = {6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 2c 00 2d 00 33 00 32 00 35 00 32 00 38 00 } //01 00  lore.exe,-32528
		$a_01_4 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 4e 00 61 00 6d 00 65 00 53 00 70 00 61 00 63 00 65 00 5c 00 7b 00 31 00 66 00 34 00 64 00 65 00 33 00 37 00 30 00 2d 00 64 00 36 00 32 00 37 00 2d 00 31 00 31 00 64 00 31 00 } //01 00  \Desktop\NameSpace\{1f4de370-d627-11d1
		$a_01_5 = {61 00 7d 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 69 00 7a 00 65 00 64 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //00 00  a}\LocalizedString
	condition:
		any of ($a_*)
 
}