
rule Trojan_Win64_AbuseCommBack_AR{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AR,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 41 00 34 00 42 00 33 00 42 00 30 00 38 00 34 00 35 00 44 00 41 00 32 00 34 00 32 00 41 00 36 00 34 00 42 00 46 00 31 00 37 00 45 00 30 00 44 00 42 00 34 00 32 00 37 00 38 00 45 00 44 00 46 00 38 00 35 00 38 00 35 00 35 00 37 00 33 00 39 00 36 00 36 00 37 00 44 00 33 00 45 00 32 00 41 00 45 00 38 00 42 00 38 00 39 00 44 00 35 00 34 00 33 00 39 00 30 00 31 00 35 00 46 00 30 00 37 00 3c 00 2f 00 70 00 3e 00 } //1 <p>A4B3B0845DA242A64BF17E0DB4278EDF85855739667D3E2AE8B89D5439015F07</p>
		$a_01_1 = {41 34 42 33 42 30 38 34 35 44 41 32 34 32 41 36 34 42 46 31 37 45 30 44 42 34 32 37 38 45 44 46 38 35 38 35 35 37 33 39 36 36 37 44 33 45 32 41 45 38 42 38 39 44 35 34 33 39 30 31 35 46 30 37 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 41 34 42 33 42 30 38 34 35 44 41 32 34 32 41 36 34 42 46 31 37 45 30 44 42 34 32 37 38 45 44 46 38 35 38 35 35 37 33 39 36 36 37 44 33 45 32 41 45 38 42 38 39 44 35 34 33 39 30 31 35 46 30 37 69 64 } //1 tableidA4B3B0845DA242A64BF17E0DB4278EDF85855739667D3E2AE8B89D5439015F07id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}