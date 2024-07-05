
rule Trojan_Win64_AbuseCommBack_FL{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FL,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 41 00 34 00 36 00 36 00 43 00 31 00 37 00 32 00 30 00 44 00 39 00 32 00 46 00 46 00 39 00 41 00 35 00 37 00 32 00 34 00 31 00 45 00 32 00 34 00 42 00 41 00 33 00 38 00 45 00 32 00 41 00 46 00 39 00 38 00 39 00 36 00 46 00 43 00 44 00 32 00 35 00 30 00 46 00 43 00 43 00 38 00 35 00 45 00 37 00 45 00 34 00 33 00 45 00 30 00 35 00 38 00 37 00 31 00 46 00 42 00 36 00 35 00 35 00 43 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>A466C1720D92FF9A57241E24BA38E2AF9896FCD250FCC85E7E43E05871FB655C</p>
		$a_01_1 = {41 34 36 36 43 31 37 32 30 44 39 32 46 46 39 41 35 37 32 34 31 45 32 34 42 41 33 38 45 32 41 46 39 38 39 36 46 43 44 32 35 30 46 43 43 38 35 45 37 45 34 33 45 30 35 38 37 31 46 42 36 35 35 43 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 41 34 36 36 43 31 37 32 30 44 39 32 46 46 39 41 35 37 32 34 31 45 32 34 42 41 33 38 45 32 41 46 39 38 39 36 46 43 44 32 35 30 46 43 43 38 35 45 37 45 34 33 45 30 35 38 37 31 46 42 36 35 35 43 69 64 } //01 00  tableidA466C1720D92FF9A57241E24BA38E2AF9896FCD250FCC85E7E43E05871FB655Cid
	condition:
		any of ($a_*)
 
}