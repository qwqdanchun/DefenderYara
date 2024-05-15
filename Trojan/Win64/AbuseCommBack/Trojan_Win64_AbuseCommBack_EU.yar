
rule Trojan_Win64_AbuseCommBack_EU{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EU,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 42 00 44 00 30 00 46 00 43 00 38 00 43 00 30 00 31 00 36 00 36 00 35 00 37 00 44 00 45 00 32 00 35 00 34 00 43 00 30 00 46 00 34 00 38 00 41 00 41 00 33 00 34 00 37 00 32 00 45 00 31 00 31 00 42 00 38 00 43 00 39 00 32 00 46 00 39 00 36 00 44 00 41 00 46 00 36 00 36 00 46 00 39 00 37 00 31 00 41 00 42 00 46 00 35 00 42 00 38 00 41 00 45 00 37 00 34 00 30 00 39 00 45 00 32 00 46 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>BD0FC8C016657DE254C0F48AA3472E11B8C92F96DAF66F971ABF5B8AE7409E2F</p>
		$a_01_1 = {42 44 30 46 43 38 43 30 31 36 36 35 37 44 45 32 35 34 43 30 46 34 38 41 41 33 34 37 32 45 31 31 42 38 43 39 32 46 39 36 44 41 46 36 36 46 39 37 31 41 42 46 35 42 38 41 45 37 34 30 39 45 32 46 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 42 44 30 46 43 38 43 30 31 36 36 35 37 44 45 32 35 34 43 30 46 34 38 41 41 33 34 37 32 45 31 31 42 38 43 39 32 46 39 36 44 41 46 36 36 46 39 37 31 41 42 46 35 42 38 41 45 37 34 30 39 45 32 46 69 64 } //01 00  tableidBD0FC8C016657DE254C0F48AA3472E11B8C92F96DAF66F971ABF5B8AE7409E2Fid
	condition:
		any of ($a_*)
 
}