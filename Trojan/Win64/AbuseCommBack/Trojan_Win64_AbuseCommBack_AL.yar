
rule Trojan_Win64_AbuseCommBack_AL{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AL,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 44 00 36 00 43 00 33 00 32 00 34 00 37 00 31 00 39 00 41 00 44 00 30 00 41 00 41 00 35 00 30 00 41 00 35 00 34 00 45 00 34 00 46 00 38 00 44 00 45 00 44 00 38 00 45 00 38 00 32 00 32 00 30 00 44 00 38 00 36 00 39 00 38 00 44 00 44 00 36 00 37 00 42 00 32 00 31 00 38 00 42 00 35 00 34 00 32 00 39 00 34 00 36 00 36 00 43 00 34 00 30 00 45 00 37 00 46 00 37 00 32 00 36 00 35 00 37 00 3c 00 2f 00 70 00 3e 00 } //1 <p>D6C324719AD0AA50A54E4F8DED8E8220D8698DD67B218B5429466C40E7F72657</p>
		$a_01_1 = {44 36 43 33 32 34 37 31 39 41 44 30 41 41 35 30 41 35 34 45 34 46 38 44 45 44 38 45 38 32 32 30 44 38 36 39 38 44 44 36 37 42 32 31 38 42 35 34 32 39 34 36 36 43 34 30 45 37 46 37 32 36 35 37 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 44 36 43 33 32 34 37 31 39 41 44 30 41 41 35 30 41 35 34 45 34 46 38 44 45 44 38 45 38 32 32 30 44 38 36 39 38 44 44 36 37 42 32 31 38 42 35 34 32 39 34 36 36 43 34 30 45 37 46 37 32 36 35 37 69 64 } //1 tableidD6C324719AD0AA50A54E4F8DED8E8220D8698DD67B218B5429466C40E7F72657id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}