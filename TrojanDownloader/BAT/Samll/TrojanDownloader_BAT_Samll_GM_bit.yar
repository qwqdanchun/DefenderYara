
rule TrojanDownloader_BAT_Samll_GM_bit{
	meta:
		description = "TrojanDownloader:BAT/Samll.GM!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 33 00 4e 00 70 00 64 00 47 00 56 00 6b 00 5a 00 58 00 5a 00 6c 00 62 00 47 00 39 00 77 00 5a 00 58 00 49 00 75 00 61 00 58 00 49 00 } //1 aHR0cDovL3NpdGVkZXZlbG9wZXIuaXI
		$a_02_1 = {61 00 47 00 68 00 6a 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 90 02 06 77 00 69 00 6e 00 68 00 6c 00 70 00 33 00 32 00 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_00_2 = {55 00 30 00 39 00 47 00 56 00 46 00 64 00 42 00 55 00 6b 00 56 00 63 00 58 00 45 00 31 00 70 00 59 00 33 00 4a 00 76 00 63 00 32 00 39 00 6d 00 64 00 46 00 78 00 63 00 56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 63 00 51 00 33 00 56 00 79 00 63 00 6d 00 56 00 75 00 64 00 46 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 35 00 63 00 58 00 46 00 4a 00 31 00 62 00 67 00 3d 00 3d 00 } //1 U09GVFdBUkVcXE1pY3Jvc29mdFxcV2luZG93c1xcQ3VycmVudFZlcnNpb25cXFJ1bg==
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}