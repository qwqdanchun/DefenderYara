
rule PWS_Win32_OnLineGames_KV{
	meta:
		description = "PWS:Win32/OnLineGames.KV,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {46 46 31 35 32 34 36 30 34 30 30 30 35 33 36 38 38 30 30 30 30 30 30 30 36 41 30 33 35 33 36 41 30 31 38 44 38 35 36 43 46 45 46 46 46 46 36 38 30 30 30 30 30 30 38 30 35 30 46 46 31 35 32 30 36 } //1 FF15246040005368800000006A03536A018D856CFEFFFF680000008050FF15206
		$a_01_1 = {5c 64 72 69 76 65 72 73 5c 65 74 63 31 00 } //1 摜楲敶獲敜捴1
		$a_01_2 = {4c 46 2d 57 4f 4f 4f 4c 44 4c 51 2d 32 30 31 30 } //1 LF-WOOOLDLQ-2010
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}