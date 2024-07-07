
rule TrojanDownloader_Win32_Banload_ACO{
	meta:
		description = "TrojanDownloader:Win32/Banload.ACO,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 "
		
	strings :
		$a_01_0 = {be 01 00 00 00 8b 45 f0 0f b7 44 70 fe 33 c3 89 45 dc 3b 7d dc 7c 0f 8b 45 dc 05 ff 00 00 00 2b c7 89 45 dc eb 03 29 7d dc 8d 45 ac 8b 55 dc } //8
		$a_01_1 = {59 00 55 00 51 00 4c 00 32 00 33 00 4b 00 4c 00 32 00 33 00 44 00 46 00 39 00 30 00 57 00 49 00 35 00 45 00 31 00 4a 00 41 00 53 00 34 00 36 00 37 00 4e 00 4d 00 43 00 58 00 58 00 4c 00 36 00 4a 00 41 00 4f 00 41 00 55 00 57 00 57 00 4d 00 43 00 4c 00 30 00 41 00 4f 00 4d 00 4d 00 } //4 YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM
		$a_01_2 = {38 00 31 00 42 00 30 00 37 00 30 00 42 00 35 00 36 00 41 00 39 00 36 00 46 00 36 00 36 00 44 00 39 00 35 00 43 00 38 00 43 00 36 00 36 00 45 00 39 00 43 00 33 00 35 00 39 00 38 00 39 00 32 00 34 00 41 00 38 00 39 00 41 00 42 00 32 00 45 00 31 00 31 00 33 00 35 00 43 00 45 00 30 00 34 00 34 00 37 00 39 00 45 00 34 00 30 00 46 00 46 00 } //2 81B070B56A96F66D95C8C66E9C3598924A89AB2E1135CE04479E40FF
		$a_01_3 = {38 00 31 00 42 00 30 00 37 00 30 00 42 00 35 00 36 00 41 00 39 00 36 00 46 00 36 00 36 00 44 00 39 00 35 00 43 00 38 00 43 00 36 00 36 00 45 00 39 00 43 00 33 00 35 00 39 00 38 00 39 00 32 00 34 00 41 00 38 00 39 00 41 00 42 00 32 00 45 00 31 00 31 00 33 00 35 00 43 00 45 00 30 00 34 00 34 00 37 00 39 00 45 00 34 00 30 00 46 00 46 00 32 00 37 00 } //2 81B070B56A96F66D95C8C66E9C3598924A89AB2E1135CE04479E40FF27
		$a_01_4 = {33 00 42 00 46 00 41 00 33 00 41 00 46 00 46 00 33 00 43 00 34 00 34 00 34 00 30 00 32 00 34 00 44 00 43 00 37 00 30 00 44 00 30 00 37 00 36 00 39 00 42 00 33 00 38 00 39 00 43 00 39 00 44 00 34 00 38 00 38 00 32 00 41 00 41 00 45 00 38 00 } //2 3BFA3AFF3C444024DC70D0769B389C9D4882AAE8
		$a_01_5 = {45 00 34 00 31 00 34 00 44 00 44 00 30 00 33 00 33 00 46 00 34 00 42 00 34 00 39 00 33 00 33 00 44 00 30 00 30 00 46 00 34 00 46 00 46 00 43 00 31 00 38 00 42 00 39 00 44 00 37 00 36 00 39 00 39 00 35 00 33 00 34 00 45 00 44 00 36 00 } //2 E414DD033F4B4933D00F4FFC18B9D7699534ED6
		$a_01_6 = {33 00 36 00 43 00 37 00 36 00 39 00 38 00 43 00 42 00 30 00 44 00 38 00 33 00 42 00 32 00 31 00 44 00 34 00 37 00 45 00 43 00 36 00 42 00 30 00 36 00 32 00 45 00 46 00 36 00 35 00 38 00 30 00 41 00 37 00 32 00 39 00 43 00 46 00 30 00 44 00 33 00 38 00 45 00 42 00 34 00 41 00 46 00 } //2 36C7698CB0D83B21D47EC6B062EF6580A729CF0D38EB4AF
	condition:
		((#a_01_0  & 1)*8+(#a_01_1  & 1)*4+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=14
 
}