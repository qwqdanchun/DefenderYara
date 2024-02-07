
rule Trojan_Win64_AbuseCommMain_CG{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CG,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 33 00 39 00 41 00 32 00 43 00 31 00 32 00 30 00 33 00 46 00 31 00 43 00 35 00 44 00 32 00 32 00 35 00 37 00 39 00 42 00 32 00 46 00 36 00 34 00 36 00 31 00 30 00 35 00 41 00 37 00 46 00 45 00 38 00 38 00 35 00 39 00 41 00 34 00 32 00 31 00 36 00 30 00 44 00 34 00 39 00 34 00 34 00 35 00 34 00 33 00 41 00 37 00 37 00 41 00 33 00 38 00 35 00 38 00 35 00 46 00 41 00 31 00 46 00 } //01 00  tox:839A2C1203F1C5D22579B2F646105A7FE8859A42160D4944543A77A38585FA1F
		$a_02_1 = {38 33 39 41 32 43 31 32 30 33 46 31 43 35 44 32 32 35 37 39 42 32 46 36 34 36 31 30 35 41 37 46 45 38 38 35 39 41 34 32 31 36 30 44 34 39 34 34 35 34 33 41 37 37 41 33 38 35 38 35 46 41 31 46 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 33 39 41 32 43 31 32 30 33 46 31 43 35 44 32 32 35 37 39 42 32 46 36 34 36 31 30 35 41 37 46 45 38 38 35 39 41 34 32 31 36 30 44 34 39 34 34 35 34 33 41 37 37 41 33 38 35 38 35 46 41 31 46 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 33 39 41 32 43 31 32 30 33 46 31 43 35 44 32 32 35 37 39 42 32 46 36 34 36 31 30 35 41 37 46 45 38 38 35 39 41 34 32 31 36 30 44 34 39 34 34 35 34 33 41 37 37 41 33 38 35 38 35 46 41 31 46 2e 68 73 74 72 } //00 00  \tox\839A2C1203F1C5D22579B2F646105A7FE8859A42160D4944543A77A38585FA1F.hstr
	condition:
		any of ($a_*)
 
}