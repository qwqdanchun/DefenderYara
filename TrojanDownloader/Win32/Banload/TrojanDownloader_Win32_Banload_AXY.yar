
rule TrojanDownloader_Win32_Banload_AXY{
	meta:
		description = "TrojanDownloader:Win32/Banload.AXY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {44 00 37 00 34 00 41 00 38 00 32 00 44 00 43 00 33 00 39 00 35 00 33 00 46 00 31 00 32 00 44 00 46 00 33 00 } //1 D74A82DC3953F12DF3
		$a_01_1 = {34 00 31 00 44 00 33 00 37 00 34 00 45 00 41 00 31 00 34 00 37 00 36 00 44 00 43 00 33 00 38 00 43 00 36 00 } //1 41D374EA1476DC38C6
		$a_01_2 = {33 00 32 00 45 00 30 00 37 00 42 00 44 00 33 00 33 00 34 00 35 00 36 00 46 00 43 00 31 00 38 00 45 00 36 00 } //1 32E07BD33456FC18E6
		$a_01_3 = {31 00 33 00 30 00 31 00 35 00 42 00 46 00 33 00 31 00 33 00 37 00 35 00 44 00 46 00 33 00 46 00 43 00 31 00 } //1 13015BF31375DF3FC1
		$a_01_4 = {38 00 34 00 44 00 41 00 36 00 33 00 41 00 37 00 33 00 39 00 } //1 84DA63A739
		$a_01_5 = {30 00 34 00 34 00 34 00 39 00 32 00 33 00 34 00 44 00 34 00 } //1 04449234D4
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_Win32_Banload_AXY_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.AXY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {39 00 38 00 36 00 44 00 42 00 41 00 35 00 31 00 30 00 37 00 32 00 41 00 41 00 37 00 32 00 39 00 } //1 986DBA51072AA729
		$a_01_1 = {44 00 39 00 32 00 43 00 46 00 39 00 31 00 35 00 33 00 42 00 46 00 45 00 35 00 43 00 46 00 44 00 } //1 D92CF9153BFE5CFD
		$a_01_2 = {41 00 30 00 36 00 36 00 41 00 38 00 41 00 45 00 37 00 32 00 45 00 46 00 35 00 31 00 } //1 A066A8AE72EF51
		$a_01_3 = {34 00 30 00 43 00 45 00 35 00 37 00 41 00 43 00 35 00 41 00 46 00 30 00 33 00 34 00 39 00 31 00 33 00 33 00 } //1 40CE57AC5AF0349133
		$a_01_4 = {42 00 38 00 39 00 36 00 36 00 32 00 41 00 37 00 36 00 34 00 42 00 31 00 37 00 35 00 } //1 B89662A764B175
		$a_01_5 = {32 00 39 00 45 00 37 00 33 00 31 00 43 00 42 00 38 00 33 00 39 00 45 00 35 00 45 00 46 00 41 00 } //1 29E731CB839E5EFA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_Win32_Banload_AXY_3{
	meta:
		description = "TrojanDownloader:Win32/Banload.AXY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {30 00 35 00 31 00 39 00 45 00 45 00 32 00 35 00 32 00 42 00 43 00 45 00 30 00 43 00 34 00 44 00 } //1 0519EE252BCE0C4D
		$a_01_1 = {44 00 33 00 35 00 31 00 42 00 43 00 39 00 32 00 35 00 36 00 46 00 33 00 35 00 35 00 } //1 D351BC9256F355
		$a_01_2 = {33 00 34 00 46 00 32 00 30 00 42 00 31 00 38 00 46 00 45 00 35 00 35 00 39 00 38 00 33 00 36 00 39 00 37 00 } //1 34F20B18FE55983697
		$a_01_3 = {41 00 35 00 36 00 30 00 41 00 36 00 37 00 43 00 39 00 35 00 42 00 42 00 36 00 31 00 46 00 45 00 35 00 45 00 } //1 A560A67C95BB61FE5E
		$a_01_4 = {31 00 35 00 33 00 33 00 43 00 45 00 35 00 34 00 42 00 30 00 36 00 45 00 42 00 31 00 } //1 1533CE54B06EB1
		$a_01_5 = {38 00 36 00 38 00 30 00 39 00 39 00 37 00 43 00 44 00 30 00 34 00 43 00 45 00 44 00 36 00 41 00 } //1 8680997CD04CED6A
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_Win32_Banload_AXY_4{
	meta:
		description = "TrojanDownloader:Win32/Banload.AXY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {45 00 36 00 32 00 31 00 45 00 35 00 32 00 33 00 45 00 39 00 36 00 30 00 38 00 35 00 43 00 32 00 30 00 32 00 } //1 E621E523E96085C202
		$a_01_1 = {39 00 37 00 39 00 31 00 39 00 35 00 39 00 32 00 37 00 32 00 44 00 38 00 31 00 43 00 42 00 39 00 31 00 42 00 } //1 9791959272D81CB91B
		$a_01_2 = {31 00 39 00 45 00 44 00 33 00 42 00 44 00 44 00 37 00 34 00 42 00 39 00 31 00 37 00 42 00 36 00 } //1 19ED3BDD74B917B6
		$a_01_3 = {38 00 30 00 38 00 45 00 39 00 30 00 39 00 35 00 37 00 33 00 44 00 39 00 31 00 46 00 42 00 43 00 31 00 43 00 } //1 808E909573D91FBC1C
		$a_01_4 = {46 00 30 00 35 00 46 00 42 00 41 00 34 00 38 00 43 00 34 00 35 00 32 00 39 00 35 00 } //1 F05FBA48C45295
		$a_01_5 = {35 00 39 00 44 00 37 00 32 00 31 00 46 00 42 00 35 00 30 00 43 00 42 00 36 00 44 00 45 00 39 00 } //1 59D721FB50CB6DE9
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}
rule TrojanDownloader_Win32_Banload_AXY_5{
	meta:
		description = "TrojanDownloader:Win32/Banload.AXY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {46 00 35 00 33 00 30 00 46 00 36 00 30 00 43 00 30 00 36 00 34 00 43 00 39 00 31 00 43 00 45 00 30 00 45 00 } //1 F530F60C064C91CE0E
		$a_01_1 = {41 00 36 00 36 00 31 00 41 00 35 00 36 00 33 00 41 00 32 00 41 00 38 00 34 00 43 00 38 00 39 00 43 00 38 00 } //1 A661A563A2A84C89C8
		$a_01_2 = {32 00 37 00 45 00 31 00 32 00 34 00 45 00 31 00 33 00 34 00 31 00 41 00 44 00 46 00 37 00 44 00 44 00 43 00 } //1 27E124E1341ADF7DDC
		$a_01_3 = {39 00 37 00 39 00 31 00 39 00 35 00 39 00 32 00 37 00 43 00 44 00 32 00 31 00 36 00 42 00 33 00 31 00 35 00 } //1 979195927CD216B315
		$a_01_4 = {31 00 30 00 33 00 45 00 44 00 42 00 32 00 39 00 45 00 35 00 33 00 33 00 46 00 34 00 } //1 103EDB29E533F4
		$a_01_5 = {37 00 38 00 42 00 36 00 34 00 32 00 44 00 34 00 37 00 39 00 41 00 34 00 34 00 34 00 38 00 30 00 } //1 78B642D479A44480
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}