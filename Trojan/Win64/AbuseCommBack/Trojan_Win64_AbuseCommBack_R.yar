
rule Trojan_Win64_AbuseCommBack_R{
	meta:
		description = "Trojan:Win64/AbuseCommBack.R,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 34 00 46 00 31 00 35 00 32 00 33 00 36 00 38 00 46 00 42 00 38 00 39 00 46 00 41 00 38 00 34 00 45 00 32 00 39 00 32 00 44 00 33 00 30 00 43 00 30 00 30 00 37 00 30 00 34 00 36 00 35 00 31 00 31 00 46 00 45 00 31 00 32 00 46 00 45 00 33 00 35 00 44 00 34 00 43 00 30 00 41 00 45 00 41 00 37 00 34 00 41 00 31 00 35 00 46 00 42 00 30 00 45 00 35 00 41 00 39 00 30 00 38 00 34 00 38 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>4F152368FB89FA84E292D30C007046511FE12FE35D4C0AEA74A15FB0E5A90848</p>
		$a_01_1 = {34 46 31 35 32 33 36 38 46 42 38 39 46 41 38 34 45 32 39 32 44 33 30 43 30 30 37 30 34 36 35 31 31 46 45 31 32 46 45 33 35 44 34 43 30 41 45 41 37 34 41 31 35 46 42 30 45 35 41 39 30 38 34 38 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 34 46 31 35 32 33 36 38 46 42 38 39 46 41 38 34 45 32 39 32 44 33 30 43 30 30 37 30 34 36 35 31 31 46 45 31 32 46 45 33 35 44 34 43 30 41 45 41 37 34 41 31 35 46 42 30 45 35 41 39 30 38 34 38 69 64 } //01 00  tableid4F152368FB89FA84E292D30C007046511FE12FE35D4C0AEA74A15FB0E5A90848id
	condition:
		any of ($a_*)
 
}