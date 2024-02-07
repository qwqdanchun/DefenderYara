
rule Trojan_Win64_AbuseCommBack_AQ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AQ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 41 00 37 00 34 00 36 00 45 00 33 00 39 00 38 00 41 00 35 00 42 00 43 00 39 00 41 00 44 00 39 00 46 00 32 00 38 00 31 00 46 00 35 00 44 00 31 00 30 00 43 00 46 00 38 00 36 00 31 00 35 00 34 00 36 00 30 00 39 00 32 00 44 00 30 00 46 00 32 00 31 00 30 00 37 00 46 00 31 00 32 00 45 00 41 00 39 00 46 00 31 00 30 00 37 00 45 00 46 00 42 00 37 00 44 00 32 00 31 00 43 00 41 00 34 00 31 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>A746E398A5BC9AD9F281F5D10CF861546092D0F2107F12EA9F107EFB7D21CA41</p>
		$a_01_1 = {41 37 34 36 45 33 39 38 41 35 42 43 39 41 44 39 46 32 38 31 46 35 44 31 30 43 46 38 36 31 35 34 36 30 39 32 44 30 46 32 31 30 37 46 31 32 45 41 39 46 31 30 37 45 46 42 37 44 32 31 43 41 34 31 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 41 37 34 36 45 33 39 38 41 35 42 43 39 41 44 39 46 32 38 31 46 35 44 31 30 43 46 38 36 31 35 34 36 30 39 32 44 30 46 32 31 30 37 46 31 32 45 41 39 46 31 30 37 45 46 42 37 44 32 31 43 41 34 31 69 64 } //01 00  tableidA746E398A5BC9AD9F281F5D10CF861546092D0F2107F12EA9F107EFB7D21CA41id
	condition:
		any of ($a_*)
 
}