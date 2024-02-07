
rule Trojan_Win64_AbuseCommBack_AC{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AC,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 38 00 39 00 39 00 44 00 32 00 38 00 44 00 30 00 43 00 34 00 33 00 42 00 42 00 46 00 37 00 46 00 45 00 33 00 45 00 34 00 46 00 45 00 35 00 42 00 30 00 43 00 42 00 38 00 30 00 39 00 31 00 34 00 42 00 45 00 34 00 41 00 44 00 41 00 38 00 37 00 38 00 30 00 41 00 30 00 34 00 41 00 46 00 43 00 46 00 36 00 32 00 34 00 39 00 41 00 39 00 35 00 41 00 42 00 41 00 31 00 30 00 31 00 37 00 30 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>899D28D0C43BBF7FE3E4FE5B0CB80914BE4ADA8780A04AFCF6249A95ABA10170</p>
		$a_01_1 = {38 39 39 44 32 38 44 30 43 34 33 42 42 46 37 46 45 33 45 34 46 45 35 42 30 43 42 38 30 39 31 34 42 45 34 41 44 41 38 37 38 30 41 30 34 41 46 43 46 36 32 34 39 41 39 35 41 42 41 31 30 31 37 30 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 38 39 39 44 32 38 44 30 43 34 33 42 42 46 37 46 45 33 45 34 46 45 35 42 30 43 42 38 30 39 31 34 42 45 34 41 44 41 38 37 38 30 41 30 34 41 46 43 46 36 32 34 39 41 39 35 41 42 41 31 30 31 37 30 69 64 } //01 00  tableid899D28D0C43BBF7FE3E4FE5B0CB80914BE4ADA8780A04AFCF6249A95ABA10170id
	condition:
		any of ($a_*)
 
}