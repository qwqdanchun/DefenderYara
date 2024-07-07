
rule Trojan_Win64_AbuseCommBack_DM{
	meta:
		description = "Trojan:Win64/AbuseCommBack.DM,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 42 00 32 00 44 00 45 00 43 00 44 00 32 00 41 00 35 00 34 00 44 00 44 00 38 00 30 00 43 00 30 00 45 00 34 00 38 00 41 00 42 00 42 00 30 00 46 00 39 00 38 00 41 00 35 00 41 00 30 00 39 00 45 00 37 00 31 00 33 00 39 00 33 00 41 00 33 00 30 00 33 00 41 00 44 00 34 00 42 00 32 00 41 00 45 00 46 00 38 00 34 00 39 00 38 00 43 00 41 00 36 00 43 00 39 00 45 00 45 00 45 00 36 00 32 00 38 00 3c 00 2f 00 70 00 3e 00 } //1 <p>B2DECD2A54DD80C0E48ABB0F98A5A09E71393A303AD4B2AEF8498CA6C9EEE628</p>
		$a_01_1 = {42 32 44 45 43 44 32 41 35 34 44 44 38 30 43 30 45 34 38 41 42 42 30 46 39 38 41 35 41 30 39 45 37 31 33 39 33 41 33 30 33 41 44 34 42 32 41 45 46 38 34 39 38 43 41 36 43 39 45 45 45 36 32 38 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 42 32 44 45 43 44 32 41 35 34 44 44 38 30 43 30 45 34 38 41 42 42 30 46 39 38 41 35 41 30 39 45 37 31 33 39 33 41 33 30 33 41 44 34 42 32 41 45 46 38 34 39 38 43 41 36 43 39 45 45 45 36 32 38 69 64 } //1 tableidB2DECD2A54DD80C0E48ABB0F98A5A09E71393A303AD4B2AEF8498CA6C9EEE628id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}